FROM ubuntu:16.04

MAINTAINER "Felipe de Jesus Muñoz Gonzalez" fmunoz@lcg.unam.mx

# R pre-requisites

RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get install -y --no-install-recommends apt-utils \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:opencpu/opencpu-1.6 && \
    apt-get update && \
    apt-get install -y opencpu rstudio-server \
    r-base r-base-dev r-base-core \
    libpangoft2-1.0-0  \
    libxt-dev \
    xvfb \
    xauth \ 
    xfonts-base \
    libglib2.0-0  \
    libglib2.0-bin  \
    libpango-1.0-0  \
    libcurl4-openssl-dev \ 
    libxml2-dev \
    libglib2.0-dev \
    libgdk-pixbuf2.0-dev \
    libatk1.0-dev \
    libssl-dev \
    libpangocairo-1.0-0 \
    libcairo2  \
    libcairo2-dev \ 
    libgtk2.0-dev \   
    libpango1.0-dev \
    fonts-dejavu \
    gfortran \
    libssh2-1-dev \
    libssl-dev \
    r-cran-xml \
    libnlopt-dev \
    xml-core \
    gcc && apt-get clean && \
    rm -rf /var/lib/apt/lists/*



RUN Rscript -e "install.packages(c('gridSVG','cdfname','xml', 'gcc', 'irkernel', 'plyr', 'devtools', 'dplyr', 'gplots', 'ggplot2', 'tidyr', 'shiny', 'rmarkdown', 'forecast', 'stringr', 'rsqlite','reshape2', 'nycflights13', 'caret', 'rcurl', 'crayon', 'randomforest', 'Cairo'), repos='https://cloud.r-project.org')"

RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite()"

RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite(c( \
   'annotate', \
   'limma', \
   'affy', \
   'GEOquery', \
   'SVGAnnotation', \ 
   'affxparser' , \
   'simpleaffy', \
   'hgu133a.db', \
   'hgu133a2.db', \
   'hgu133plus2.db', \
   'hugene10sttranscriptcluster.db', \
   'oligo', \
   'frma', \ 
   'hgu133afrmavecs', \
   'hgu133plus2frmavecs', \
   'hgu133plus2cdf', \
   'hgu133acdf', \
   'hugene10stv1cdf', \
   'arrayQualityMetrics', \
   'genefilter', 'pathifier' ));"
   
   
RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite(c('GEOquery'));"

