#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"
#include "sensor_msgs/JointState.h"
#include "nxt_msgs/JointCommand.h"
#include <map>
#include <sstream>
#include <string> 


  double vel_to_eff = 0.1;
  double vel_rot_desi = 0;
  double vel_trans_desi = 0;
  double vel_trans = 0;
  double vel_rot = 0;


  std::map<std::string,double> m_velocity;

void vel_Callback(const geometry_msgs::Twist& msg)
{
  //ROS_INFO("Vel received!!");
  vel_rot_desi = msg.angular.z;
  vel_trans_desi = msg.linear.x;
  //ROS_INFO("Vel received!! Rot: [%f]", vel_rot_desi);
  //ROS_INFO("trans: [%f]" , vel_trans_desi);
}

void jStates_Callback(const sensor_msgs::JointState& msg)
{
	//ROS_INFO("JointState!!");
	
	for (int i=0; i< msg.velocity.size(); i++){
            m_velocity[msg.name[i]] = msg.velocity[i];
	}
}


int main(int argc, char **argv)
{

  ros::init(argc, argv,"base_controller");
  ros::NodeHandle n;

//Joints Commands publisher
  ros::Publisher Joints_pub = n.advertise<nxt_msgs::JointCommand>("joint_command", 10);
//Subscribers to joint_states and cmd_vel
  ros::Subscriber vel_sub = n.subscribe("cmd_vel", 10, vel_Callback);
  ros::Subscriber jStates_sub = n.subscribe("joint_states", 10, jStates_Callback);

  std::string r_joint = "base_to_rwheel"; 
  std::string l_joint = "base_to_leftwheel";
  double wheel_radius = 0.0408;
  double wheel_basis = 0.19;
  double vel_to_eff = 0.2;
  double vel_trans = 0;
  double vel_rot = 0;
  double k_rot = 0.075/vel_to_eff;
  double k_trans = 0.055/vel_to_eff;
  ros::Rate loop_rate(20);

  int count = 0;
  while (ros::ok())
  {

	// lowpass for measured velocity
	vel_trans = 0.5*vel_trans + 0.5*(m_velocity[r_joint] + m_velocity[l_joint])*wheel_radius/2.0;
	vel_rot =   0.5*vel_rot   + 0.5*(m_velocity[r_joint] - m_velocity[l_joint])*wheel_radius/(2.0*wheel_basis);
	//ROS_INFO("Vel_trans [%f]", vel_trans);
	//ROS_INFO("Vel_ROT [%f]", vel_rot);
	// velocity commands
	vel_trans = vel_trans_desi + k_trans*(vel_trans_desi - vel_trans);
	//ROS_INFO("Vel_trans_updated [%f]", vel_trans);
	vel_rot = vel_rot_desi + k_rot*(vel_rot_desi - vel_rot);
    

		nxt_msgs::JointCommand r_cmd;
		r_cmd.name = r_joint;
		r_cmd.effort = -vel_to_eff*(vel_trans/wheel_radius + vel_rot*wheel_basis/wheel_radius);
		//ROS_INFO("right Effort [%f]", r_cmd.effort);
		Joints_pub.publish(r_cmd);

		nxt_msgs::JointCommand l_cmd;
		l_cmd.name = l_joint;
		l_cmd.effort = -vel_to_eff*(vel_trans/wheel_radius - vel_rot*wheel_basis/wheel_radius);
		Joints_pub.publish(l_cmd);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}
