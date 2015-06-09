#
# Cookbook Name:: little-app
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# ***** Samikya Reddy - DevOps HomeWork *******
#We are in little-app cookbook's Recipe page 
#This File Default.rb 
#In this file we are using chef resources like package and service  
# To install apache the following one line code is written , it takes the default action "install" when nothing is specified.

package 'httpd'

# the following lines of code are to start the service

service 'httpd' do
  action [:enable , :start]
end

# To write text to our home page

file '/var/www/html/index.html' do
content '<html>
         <body>
         <h1> Hello World! </h1>
         </body>
         <html>'
end

# I tried this code on a cloud CentOS, so iptables service is configured to limit network traffic, therefore stopping the service ensures that the inbound traffic on all ports including port 80 is permitted.

service 'iptables' do
action :stop
end

#End of Code


