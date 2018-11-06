
FROM ubuntu:16.04

MAINTAINER Administrator
MAINTAINER admin @ learnitguide.net
MAINTAINER Devops Engineer(admin @ learnitguide.net)

RUN apt-get update -y

RUN apt-get install apache2 -y

RUN apt-get install git -y

WORKDIR /ckptmp

RUN git clone https://github.com/javahometech/javahome-app

RUN rm -rf javahome-app/.git

RUN apt-get remove git -y

WORKDIR /ckptmp/javahome-app

RUN cp -r * /var/www/html/

RUN  rm -rf /ckpapp

EXPOSE 80

ENTRYPOINT ["apachectl","-D","FOREGROUND"]
