#include <ros/ros.h>
#include "dinogenerator/GenerateDino.h"
#include<random_numbers/random_numbers.h>
#include <iostream>
#include<std_msgs/String.h>

std::string trassic_series_bank[] = {
    "upper",
    "middle",
    "lower"
    };

std::string families_bank[] = {
    "Tyrannosaurs",
    "Sauropods",
    "Ceratopsians",
    "Raptors",
    "Theropods",
    "Titanosaurs",
    "Ankylosaurs",
    "Hadrosaurs",
    "Ornithomimids",
    "Ornithopods",
    "Pachycephalosaurs",
    "Prosauropods",
    "Stegosaurs",
    "Therizinosaurs",
    };


int main(int argc, char **argv)
{
    ros::init(argc,argv,"dinogenerator_publisher");

    random_numbers::RandomNumberGenerator number_generator;
    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<dinogenerator::GenerateDino>("dinogenerator");
    ros::Publisher pub = n.advertise<std_msgs::String>("/dinogenerator1/facts", 1000);
    dinogenerator::GenerateDino srv;
    std_msgs::String fact;  

    while (ros::ok())
    {
        std::string word;
        std::cout << "input the word:";    
        std::cin >> word;
        
        srv.request.input_word = word;

        if (client.call(srv))
        {
            std::cout << "dino name:" << srv.response.output_dino_name << std::endl;
            fact.data = srv.response.output_dino_name  + " lived in the " +
            trassic_series_bank[number_generator.uniformInteger(0,2)] + 
            " Triassic and belonged to the " + 
            families_bank[number_generator.uniformInteger(0,13)] + " family.\n";
            pub.publish(fact);
            std::cout << fact.data << std::endl;
        }
        else
        {
            std::cout << "Failed to call service dinogenerator" << std::endl;
            return 1;
        }
    }

    return 0;
}
