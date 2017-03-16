FROM ubuntu:14.04
MAINTAINER "Felipe de Jesus Muñoz Gonzalez" fmunoz@lcg.unam.mx

ARG R_VERSION
ARG BUILD_DATE
ENV BUILD_DATE ${BUILD_DATE:-}
ENV R_VERSION ${R_VERSION:-3.2.5}
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV TERM xterm


## dependencies
RUN apt-get update 
RUN apt-get build-dep -y g++
RUN apt-get install -y --no-install-recommends build-essential \
    bash-completion \
    ca-certificates \
    file \
    fonts-texgyre \
    g++ \
    gfortran \
    gsfonts \
    libbz2-1.0 \
    libcurl3 \
    libicu52 \
    libopenblas-dev \
    libpangocairo-1.0-0 \ 
    libpcre3 \
    libpng12-0 \
    libtiff5 \ 
    liblzma5 \
    locales \
    make \
    unzip \
    zip \
    zlib1g \
    libc6-dev \
    libreadline6 libreadline6-dev \
    gfortran xorg-dev \
    curl wget \
    libpaper-utils \
    libtk8.6 \
    libtcl8.6 \
    liblapack3 \
    libgomp1 \
    libc6 \
    xdg-utils  
    
  RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
  && locale-gen en_US.utf8 \
  && /usr/sbin/update-locale LANG=en_US.UTF-8 \
  && BUILDDEPS="curl \
    default-jdk \
    libbz2-dev \
    libcairo2-dev \ 
    libcurl4-openssl-dev \
    libpango1.0-dev \
    libjpeg-dev \
    libicu-dev \
    libpcre3-dev \
    libatlas3-base \
    libpng-dev \
    libreadline-dev \
    libtiff5-dev \
    liblzma-dev \ 
    libx11-dev \
    libxt-dev \
    perl \
    tcl8.5-dev \
    tk8.5-dev \
    texinfo \
    texlive-extra-utils \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-latex-recommended \
    x11proto-core-dev \
    xauth \
    xfonts-base \
    xvfb \
    zlib1g-dev" 
    
RUN wget https://cran.rstudio.com/bin/linux/ubuntu/xenial/r-base-core_3.2.5-1xenial_amd64.deb
RUN dpkg -i r-base-core_3.2.5-1xenial_amd64.deb

  

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
    


