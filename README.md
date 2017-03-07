![docker](https://msopentech.com/wp-content/uploads/dockericon.png =250x)
![affymetrics](http://mms.businesswire.com/media/20150720005017/en/477014/5/2294568_affymetrix_new_logo_no_tagline.jpg =250x)
[![Docker Pulls](https://img.shields.io/docker/pulls/fmunoz/rstudio-microarrays.svg?maxAge=2592000)](https://hub.docker.com/r/fmunoz/rstudio-microarrays/)


# RStudio-Microarrays in a Docker Container

## What is this?
This project is an example of the use of dockers with the r program lenguage, 
the RStudio user interface and the bioconductor packages for affymetrix microarrays.
This microarray pipeline is focused into the fRMA algorithm and the ArrayQualityMetrics
packate for quality.

This project is based on the work of mccahill/rstudio wich also contains knitr and 
Rmarkdown libraries to create esasily and nicely formatted output. There is
also just enough of TeX to allow knitr to generate PDF output.

## How to pull the container
Pull the container with the command:

```
[sudo] docker pull fmunoz/rstudio-microarrays
```


## How to run
Run using the default password from the Dockerfile build script:

```
[sudo] docker run -d -i -t -p 8787:8787 -e USERPASS="badpassword" fmunoz/rstudio-microarrays
```

## Load a volume

```
[sudo] docker run -d -i -t -p 8787:8787 -e USERPASS="badpassword"  -v /external/directory/for/user:/root/ fmunoz/rstudio-microarrays
```

## How to access
To access the app, point your web browser at
http://localhost:8787/

You will be prompted to login. Use the username 'guest' and the password 'badpassword'
