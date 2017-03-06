# RStudio in a Docker Container

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
[sudo] docker run -d -i -t -p 8787:8787 -e USER="user" -e USERPASS="badpassword" fmunoz/rstudio-microarrays
```

## Load a volume

```
[sudo] docker run -d -i -t -p 8787:8787 -e USER="user" -e USERPASS="badpassword"  -v /external/directory/for/user:/root/ fmunoz/rstudio-microarrays
```

## How to access
To access the app, point your web browser at
http://localhost:8787/

You will be prompted to login. Use the username 'user' and the password 'badpassword'
