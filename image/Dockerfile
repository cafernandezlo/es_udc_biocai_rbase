# syntax = docker/dockerfile:experimental

# Descargar imagen de shiny con tidyverse
FROM r-base:3.6.3

RUN R -e "install.packages('caret', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('modelgrid', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('doMC', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('dplyr', repos='http://cran.us.r-project.org')"\
&& R -e "install.packages('mlr', repos='http://cran.us.r-project.org')"\
&& R -e "install.packages('party', repos='http://cran.us.r-project.org')"

WORKDIR /usr/local/src/myscripts
