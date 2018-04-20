% Katrina Alsup
clear all
close all
clc
format compact

% Create a bag file object with the file name
bag = rosbag('../data/myturtle.bag')
 
% Display a list of the topics and message types in the bag file
bag.AvailableTopics
 
% Since the messages on topic turtle1/pose are of type Twist,
% let's see some of the attributes of the Twist message
msg_pose = rosmessage('turtlesim/Pose')
showdetails(msg_pose)
 
% Get just the topic we are interested in
bagselect = select(bag,'Topic','turtle1/pose');
 
% Create a time series object based on the fields of the turtlesim/Pose
% message we are interested in
ts = timeseries(bagselect,'X','Y','Theta','LinearVelocity','AngularVelocity');

%% Plot results
figure(1)
plot(ts.data(:,1),ts.data(:,2))
title('Turtle Location over Time','fontsize',18)
xlabel('X Location [units]','fontsize',18)
ylabel('Y Location [units]','fontsize',18)
saveas(gcf,'pose_xy.png')

figure(2)
plot(ts.time,ts.data(:,3))
title('Turtle Heading Angle over Time','fontsize',18)
xlabel('Time [s]','fontsize',18)
ylabel('Heading Angle \theta [rad]','fontsize',18)
saveas(gcf,'pose_theta.png')

%%
figure(3)
x = ts.data(:,1);
y = ts.data(:,2);
u = ts.data(:,4).*cos(ts.data(:,3));
v = ts.data(:,4).*sin(ts.data(:,3));
ii = 1:10:length(ts.data(:,1));
quiver(x(ii),y(ii),u(ii),v(ii))
title('Turtle Orientation','fontsize',18)
xlabel('X Location [units]','fontsize',18)
ylabel('Y Location [units]','fontsize',18)
saveas(gcf,'pose_quiver.png')





