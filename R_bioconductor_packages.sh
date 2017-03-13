
RUN Rscript -e "install.packages(c('gridSVG','cdfname', 'gcc', 'irkernel',  'devtools', 'dplyr', 'tidyr', 'shiny', 'rmarkdown', 'forecast', 'stringr', 'rsqlite','reshape2', 'nycflights13', 'caret', 'rcurl', 'crayon', 'randomforest', 'Cairo'), repos='https://cloud.r-project.org')"

RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite()"

RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite(c( \

   'annotate', \
   'annotationdbi', \
   'arrayQualityMetrics', \
   'affy', \
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
   's4vectors', \
   'SVGAnnotation', \ 
   'simpleaffy'));"
   
   
RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite(c('GEOquery'));"
