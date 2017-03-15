FROM ubuntu:14.04
MAINTAINER "Felipe de Jesus Muñoz Gonzalez" fmunoz@lcg.unam.mx

RUN apt-get update  &&   \
    apt-get upgrade  -y

#Utilities
RUN DEBIAN_FRONTEND=noninteractive apt-get  install -y \
   vim \
   less \
   net-tools \
   inetutils-ping \
   curl \
   git \
   telnet \
   nmap \
   socat \
   python-software-properties \
   sudo \
   libcurl4-openssl-dev \
   libxml2-dev 
   
RUN apt-get build-dep -y r-base 

RUN curl https://cran.r-project.org/src/base/R-3/R-3.2.1.tar.gz | tar xz
RUN cd R-3.2.1
RUN ./configure && make . && make install .
  

RUN apt-get install gdebi-core
RUN wget https://download2.rstudio.org/rstudio-server-1.0.136-amd64.deb
RUN gdebi rstudio-server-1.0.136-amd64.deb

RUN apt-get install -y --no-install-recommends libpangoft2-1.0-0  \
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
    libatk1.0-dev \
    libssl1.0.0  \
    libpangocairo-1.0-0 \
    libcairo2  \
    libcairo2-dev \ 
    libgtk2.0-dev \   
    libpango1.0-dev \
    fonts-dejavu \
    gfortran \
    libssh2-1-dev \
    r-cran-xml \
    r-cran-plyr \ 
    r-cran-ggplot2 \
    r-cran-gplots \    
    libnlopt-dev \
    xml-core \
    lsb-release \
    libssl-dev \
    libstdc++6 \
    gcc && apt-get clean
    


