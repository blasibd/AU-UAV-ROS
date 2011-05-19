/*
simulator
This simulator will act as a system for students to test a collision avoidance algorithm prior to real 
physical tests.  It will need to mirror the XBeeIO ROS system along with provide realistic data about
an ArduPilot's flight data.  We will need to look at some real data and maybe ArduPilot code in order to
understand how this works.
*/

//Standard C++ headers
#include <sstream>
#include <map>

//ROS headers
#include "ros/ros.h"
#include "AU_UAV_ROS/standardDefs.h"
#include "AU_UAV_ROS/TelemetryUpdate.h"
#include "AU_UAV_ROS/Command.h"
#include "AU_UAV_ROS/RequestPlaneID.h"
#include "AU_UAV_ROS/CreateSimulatedPlane.h"
#include "AU_UAV_ROS/SimulatedPlane.h"

ros::ServiceClient requestPlaneIDClient;

std::map<int, AU_UAV_ROS::SimulatedPlane> simPlaneMap;

/*
commandCallback:
This is the callback in place to handle any commands sent.  Note that not all commands will be destined for
the simulator so it must be verified before proceeding with any commands.
*/
void commandCallback(const AU_UAV_ROS::Command::ConstPtr& msg)
{
	//check to make sure that the plane ID is in the simulator
	if(simPlaneMap.find(msg->planeID) != simPlaneMap.end())
	{
		ROS_INFO("Received new message: Plane #%d to (%f, %f, %f)", msg->planeID, msg->latitude, msg->longitude, msg->altitude);
		simPlaneMap[msg->planeID].handleNewCommand(*msg);
	}
	else
	{
		ROS_INFO("Received message to non-simulated plane $%d", msg->planeID);
	}
}

bool createSimulatedPlane(AU_UAV_ROS::CreateSimulatedPlane::Request &req, AU_UAV_ROS::CreateSimulatedPlane::Response &res)
{
	AU_UAV_ROS::RequestPlaneID srv;
	
	//check to make sure the client call worked (regardless of return values from service)
	if(requestPlaneIDClient.call(srv))
	{
		res.planeID = srv.response.planeID;
		
		//create and add our plane to the list of simulated planes
		//AU_UAV_ROS::SimulatedPlane newPlane(srv.response.planeID, req);
		simPlaneMap[srv.response.planeID] = AU_UAV_ROS::SimulatedPlane(srv.response.planeID, req);
		
		//plane created successfully
		return true;
	}
	else
	{
		ROS_ERROR("Did not receive response from coordinator");
		return false;
	}
}

int main(int argc, char **argv)
{
	//Standard ROS startup
	ros::init(argc, argv, "simulator");
	ros::NodeHandle n;
	
	//setup subscribing to command messages
	ros::Subscriber sub = n.subscribe("commands", 1000, commandCallback);
	
	//setup publishing to telemetry message
	ros::Publisher telemetryPub = n.advertise<AU_UAV_ROS::TelemetryUpdate>("telemetry", 1000);
	
	//setup server services
	ros::ServiceServer createSimulatedPlaneService = n.advertiseService("create_simulated_plane", createSimulatedPlane);
	
	//setup client services
	requestPlaneIDClient = n.serviceClient<AU_UAV_ROS::RequestPlaneID>("request_plane_ID");
	
	//TODO:check for validity of 1 Hz
	//currently updates at 1 Hz, based of Justin Paladino'sestimate of approximately 1 update/sec
	ros::Rate loop_rate(1);
	 
	//while the user doesn't kill the process or we get some crazy error
	while(ros::ok())
	{
		//first check for callbacks
		ros::spinOnce();
		
		AU_UAV_ROS::TelemetryUpdate tUpdate;
		std::map<int, AU_UAV_ROS::SimulatedPlane>::iterator ii;
		
		//iterate through all simulated planes and generate an update for each
		for(ii = simPlaneMap.begin(); ii != simPlaneMap.end(); ii++)
		{
			ii->second.fillTelemetryUpdate(&tUpdate);
			telemetryPub.publish(tUpdate);
		}
		
		//sleep until next update cycle
		loop_rate.sleep();
	}
	
	return 0;
}
