FROM rocker/rstudio:latest
MAINTAINER "Felipe de Jesus Muñoz Gonzalez" fmunoz@lcg.unam.mx

RUN apt-get -y -q dist-upgrade 

RUN apt-get -y update -qq  && apt-get -y upgrade

RUN apt-get install -y apt-utils  software-properties-common 

#RUN sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test 

RUN apt-get install  -y  libpangoft2-1.0-0  \
    apt-utils \
    libxt-dev \
    xvfb \
    xauth \ 
    xfonts-base \
    r-cran-lattice \
    r-cran-latticeextra \
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
    libnlopt-dev \
    xml-core \
    lsb-release \
    libssl-dev \
    r-cran-xml \
    r-cran-plyr \ 
    r-cran-sp \
    r-cran-ggplot2 \
    r-cran-gplots \  
    r-cran-survival \
    r-cran-matrix \
    r-cran-matrixmodels \
    r-cran-e1071 \
    r-cran-class \
    r-cran-sparsem \
    r-cran-nlme \
    r-cran-urca \
    r-cran-cluster \
    r-cran-zoo \
    r-cran-xts \
    r-cran-rmysql \
    r-cran-rpostgresql \
    r-cran-quafntreg \
    r-cran-rcppeigen \
    r-cran-sandwich \
    r-cran-th.data \
    r-cran-kernsmooth \
    r-cran-multcomp \
    r-cran-lme4 \
    r-cran-cubature 
    r-cran-strucchange \
    r-cran-mass \
    r-cran-tseries \
    r-cran-lmtest \
    gcc && apt-get clean


RUN Rscript -e "install.packages(c('recipes','questionr','ipred','gridSVG','cdfname', 'gcc', 'irkernel', 'RColorBrewer' ,'devtools', 'dplyr', 'tidyr', 'shiny', 'rmarkdown', 'forecast', 'stringr', 'rsqlite','reshape2', 'nycflights13', 'caret', 'rcurl', 'crayon', 'randomforest', 'Cairo', 'ggplot2', 'gplots'), dependencies=T, repos='https://cloud.r-project.org')"

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
   'broom', \
   'classInt' \
   'Cubist' \ 
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
   'prodlim' \
   'hta20transcriptcluster.db' \
   's4vectors', \
   'SVGAnnotation', \ 
   'simpleaffy', 'subselect', 'TTR', 'units', 'r-cran-rocr'));"
  
