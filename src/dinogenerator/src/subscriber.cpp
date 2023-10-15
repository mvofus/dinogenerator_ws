#include<ros/ros.h>
#include<random_numbers/random_numbers.h>
#include"dinogenerator/GenerateDino.h"

std::string suffix_bank[] = {
    "saurus",
    "raptor",
    "pteryx",
    "stacator",
    "rex",
    "ceratops",
    "gnathus",
    "roides",
    "draco",
    "dromeus"
    };


random_numbers::RandomNumberGenerator number_generator;

bool generate(dinogenerator::GenerateDino::Request &req,
    dinogenerator::GenerateDino::Response &res/*, ros::Publisher &pub*/){
    res.output_dino_name = req.input_word + suffix_bank[number_generator.uniformInteger(0,9)];
    res.output_dino_name[0] = toupper(res.output_dino_name [0]);
    for(unsigned int idx = 1; idx < res.output_dino_name.length(); ++idx)
        res.output_dino_name[idx] = tolower(res.output_dino_name[idx]);

    ROS_INFO("request: %s", req.input_word.c_str());
    ROS_INFO("sending back response:[%s]", res.output_dino_name.c_str());

    return true;
}

int main(int argc, char **argv){
    ros::init(argc, argv, "dinogenerator_server");
    ros::NodeHandle n;

    ros::ServiceServer service = n.advertiseService("dinogenerator", generate);
    ROS_INFO("Ready to generate dino name");


    ros::spin();

    return 0;
}
