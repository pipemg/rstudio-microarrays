FROM rocker/rstudio:latest
MAINTAINER "Felipe de Jesus Muñoz Gonzalez" fmunoz@lcg.unam.mx

RUN apt-get -y -q dist-upgrade 

RUN apt-get -y update -qq  && apt-get -y upgrade

RUN apt-get install -y apt-utils  software-properties-common 

#RUN sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test 

RUN apt-get install  -y  libpangoft2-1.0-0  \
    libxt-dev \
    xvfb \
    xauth \ 
    xfonts-base \
    libglib2.0-0  \
    libglib2.0-bin  \
    libpango-1.0-0  \
    libxml2-dev \
    libglib2.0-dev \
    libgdk-pixbuf2.0-dev \
    libatk1.0-dev 
