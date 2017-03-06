FROM mccahill/rstudio
MAINTAINER "Felipe de Jesus Muñoz Gonzalez" fmunoz@lcg.unam.mx


RUN apt-get -y update -qq  && apt-get -y upgrade

RUN apt-get install -y --no-install-recommends apt-utils\
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
    gcc && apt-get clean
  


RUN Rscript -e "install.packages(c('gridSVG','cdfname', 'gcc', 'irkernel',  'devtools', 'dplyr', 'tidyr', 'shiny', 'rmarkdown', 'forecast', 'stringr', 'rsqlite','reshape2', 'nycflights13', 'caret', 'rcurl', 'crayon', 'randomforest', 'Cairo'), repos='https://cloud.r-project.org')"

RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite()"

RUN apt-get install -y  r-bioc-biobase \
    r-bioc-affyio  \
    r-bioc-genefilter  \
    r-bioc-annotate  \
    r-bioc-annotationdbi  \
    r-bioc-genomicfeatures  \
    r-bioc-affy  \
    r-bioc-s4vectors  \
    r-bioc-biocgenerics \
    r-bioc-biocinstaller \
    r-bioc-biocparallel  \
    r-bioc-biomart \
    r-bioc-biostrings \
    r-bioc-limma    



RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite(c( \
   'annotate', \
   'limma', \  
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

#RUN apt-get install -y gdebi-core
#RUN wget https://download2.rstudio.org/rstudio-server-1.0.136-amd64.deb
#RUN gdebi rstudio-server-1.0.136-amd64.deb
#RUN apt-get update && apt-get upgrade



