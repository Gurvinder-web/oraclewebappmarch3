FROM fedora
# this will be base image 
MAINTAINER gurvinder
# devinfo
ARG web=httpd
# this variable web will not be present in the container
ENV server=$web
ENV color=black
# all env variable will be present in the container
RUN yum install $server -y
# install https web server as default
WORKDIR /opt/
# it will changing current die in the container
COPY . .
# it will copy all the data to docker image
EXPOSE 80
# exposing port in the container`o
ENTRYPOINT ["bin/bash","/opt/entrypoint.sh"]
