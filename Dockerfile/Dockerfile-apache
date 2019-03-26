############################################################
# Dockerfile to build apache2.4 Installed Containers
# Based on httpd:2.4.34
# docker build -t my_apache2:1.0 .
############################################################


###################################### base  ######################################

# Set the base image to Ubuntu
FROM httpd:2.4.34

# File Author / Maintainer
MAINTAINER jihuaizhi "jhzbs@sina.com"


###################################### prepare  ######################################

# Update the repository
RUN apt update 


###################################### apache2 config  ######################################

COPY httpd.conf /usr/local/apache2/conf/ 


###################################### EXPOSE ENTRYPOINT CMD   ######################################

# Expose ports
EXPOSE 80 

# Define default command. 
# 启动apache2的守护进程，守护进程可以防止容器终止运行
ENTRYPOINT ["httpd","-DFOREGROUND"]


###################################### docker run  ######################################
#  进入守护态容器控制台
#  docker exec -it apa /bin/bash


