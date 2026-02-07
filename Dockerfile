# Base image: RStudio with R 4.4.2
FROM rocker/rstudio:4.4.2

RUN Rscript -e 'install.packages("remotes", repos = "https://cloud.r-project.org")'

RUN Rscript -e 'remotes::install_version("cowsay", version = "0.8.2", repos = "https://cloud.r-project.org")'