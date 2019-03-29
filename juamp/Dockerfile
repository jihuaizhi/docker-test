############################################################
# Dockerfile to build apache2.4+php7.1+mysql5.6 Installed Containers
# Based on Ubuntu：16.04
# tools vim net-tools
# docker build -t amp_img:1.0 .
############################################################


###################################### base  ######################################

# Set the base image to Ubuntu
FROM ubuntu:16.04

# File Author / Maintainer
MAINTAINER jihuaizhi "jhzbs@sina.com"


###################################### prepare  ######################################

# Update the repository
RUN apt update

# Install necessary tools
#RUN apt install -y curl vim net-tools


###################################### apache  ######################################

# Download and Install Apache
RUN apt install -y apache2

# RUN rm -v /etc/apache2/apache2.conf && rm -v /etc/apache2/sites-available/000-default.conf

COPY apache2.conf /etc/apache2/ 
COPY 000-default.conf /etc/apache2/sites-available/
	
# Remove the default Nginx configuration file
#RUN rm -v /etc/nginx/conf.d/default.conf
# Copy a configuration file from the current directory
#ADD default.conf /etc/nginx/conf.d/
#     # Append "daemon off;" to the beginning of the configuration
#     RUN echo "daemon off;" >> /etc/nginx/nginx.conf


###################################### mysql  ######################################

ENV MYSQL_ROOT_PASSWORD=123456
#RUN apt install -y mysql-server mysql-client


#RUN apt install mysql-server-5.6 mysql-client-5.6 mysql-client-core-5.6


#mysqld --user=root

###################################### php  ######################################

RUN apt install -y php libapache2-mod-php 



###################################### nginx  ######################################

#  nginx -g 'daemon off;'



###################################### ssh server  ######################################






###################################### EXPOSE ENTRYPOINT CMD   ######################################

# Expose ports
EXPOSE 80 3306 9000 22

# Define default command. 
# 启动apache2的守护进程，守护进程可以防止容器终止运行
ENTRYPOINT ["apache2ctl","-DFOREGROUND"]

# Set the default command to execute when creating a new container
#CMD ["/bin/bash"]


###################################### docker run  ######################################

#  通过镜像创建并启动容器
#  docker run --name container_name -p 8089:80 -p 3309:3306 -p 9000:9000 -p 23:22 -d image_name 
#  docker run --name aaa -p 8089:80 -p 3309:3306 -p 9000:9000 -d aaa  
#  进入守护态容器控制台
#  docker exec -it amp1.0 /bin/bash




