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
    libatk1.0-dev \
    libpangocairo-1.0-0 \
    libcairo2  \
    libcairo2-dev \ 
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

RUN Rscript -e "install.packages(c('gridSVG','cdfname', 'gcc', 'irkernel', 'RColorBrewer' ,'devtools', 'dplyr', 'tidyr', 'shiny', 'rmarkdown', 'forecast', 'stringr', 'rsqlite','reshape2', 'nycflights13', 'caret', 'rcurl', 'crayon', 'randomforest', 'Cairo', 'ggplot2', 'gplots'), dependencies=T, repos='https://cloud.r-project.org')"

RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite()"

RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite(c( \

   'annotate', \
   'annotationdbi', \
   'arrayQualityMetrics', \
   'affy', \
   'affycoretools' \
   'affyio', \
   'affxparser' , \
   'biostrings', \
   'biocgenerics', \
   'biocinstaller', \
   'biocparallel',  \
   'biomart', \
   'frma', \   
   'GEOquery', \
   'genefilter', \
   'genomicfeatures', \
   'hgu133a.db', \
   'hgu133a2.db', \
   'hgu133plus2.db', \
   'hugene10sttranscriptcluster.db', \
   'hgu133afrmavecs', \
   'hgu133plus2frmavecs', \
   'hgu133plus2cdf', \
   'hgu133acdf', \
   'hugene10stv1cdf', \
   'limma', \  
   'oligo', \
   'pathifier', \
   'pd.hta.2.0' \
   'hta20transcriptcluster.db' \
   's4vectors', \
   'SVGAnnotation', \ 
   'simpleaffy'));"
   
   
RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite(c('GEOquery'));"
