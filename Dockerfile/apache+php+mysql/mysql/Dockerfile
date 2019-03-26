############################################################
# Dockerfile to build mysql5.6 Installed Containers
# docker build -t my_mysql:1.0 .
############################################################


###################################### base  ######################################

# Set the base image to Ubuntu
FROM mysql:5.6

# File Author / Maintainer
MAINTAINER jihuaizhi "jhzbs@sina.com"


###################################### prepare  ######################################

# Update the repository
RUN apt update


###################################### mysql  ######################################

ENV MYSQL_ROOT_PASSWORD=123456


COPY mysqld.cnf /etc/mysql/mysql.conf.d/



###################################### EXPOSE ENTRYPOINT CMD   ######################################

# Expose ports
EXPOSE 3306

# 启动mysql的守护进程，守护进程可以防止容器终止运行
CMD ["/usr/bin/mysqld_safe"]


###################################### docker run  ######################################

#  通过镜像创建并启动容器
#  docker run --name my_mysql -p 3309:3306 -d my_mysql：1.0 
#  docker run --name mmm -p 3309:3306 -d mmm
#  进入守护态容器控制台
#  docker exec -it mmm /bin/bash




