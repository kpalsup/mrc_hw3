
rosservice call /spawn 4 2 0.2 ""
rosservice call /turtle2/set_pen '10' '10' '10' '5' '0'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[6, 1, 0.0]' '[0.0, 0.0, 0]'
rosservice call /turtle1/set_pen '100' '100' '100' '5' '0'

rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[-3, 0, 0.0]' '[0.0, 0.0, 0]'

rosservice call /clear
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -4.6]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[4.0, 0.0, 0.0]' '[0.0, 0.0, 0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[-8.0, 0.0, 0.0]' '[0.0, 0.0, 0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[4.0, 0.0, 0.0]' '[0.0, 0.0, 0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[5.0, 0.0, 0.0]' '[0.0, 0.0, 0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[-5.0, 0.0, 0.0]' '[0.0, 0.0, 0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[5, 0.0, 0.0]' '[0.0, 0.0, 0]'

rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[4, 4, 0.0]' '[0.0, 0.0, 8]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[-1, 0, 0.0]' '[0.0, 0.0, 0]'


