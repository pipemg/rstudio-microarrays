FROM rocker/rstudio:latest
MAINTAINER "Felipe de Jesus Muñoz Gonzalez" fmunoz@lcg.unam.mx

RUN apt-get -y -q dist-upgrade 

RUN apt-get -y update -qq  && apt-get -y upgrade

#RUN apt-get install -y --no-install-recommends apt-utils  software-properties-common 

#RUN sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test 

RUN apt-get -y update -qq  && apt-get -y upgrade


RUN apt-get install -y --no-install-recommends 
   

