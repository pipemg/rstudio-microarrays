FROM rocker/rstudio:latest
MAINTAINER "Felipe de Jesus Muñoz Gonzalez" fmunoz@lcg.unam.mx

RUN apt-get -y update -qq  && apt-get -y upgrade

RUN apt-get install -y --no-install-recommends 
   

