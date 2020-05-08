# syntax = docker/dockerfile:experimental

FROM centos:centos6
ARG R_VERSION
ARG GCC_VERSION

ENV R_VERSION=${R_VERSION:-3.6.3} \
    GCC_VERSION=${GCC_VERSION:-6.3.0}

# install gcc for dependencies and R
RUN cd /tmp \
 && yum update -y \
 && yum install -y curl wget texinfo-tex flex zip libgcc glibc-devel \
        gcc g++ gcc-c++ zlib zlib-devel bzip2 bzip2-devel xz xz-devel \
        pcre pcre-devel curl-devel readline-devel libxml2-devel epel-release \
 && curl -O https://ftp.gnu.org/gnu/gcc/gcc-${GCC_VERSION}/gcc-${GCC_VERSION}.tar.gz \
 && tar xzf gcc-${GCC_VERSION}.tar.gz \
 && cd gcc-${GCC_VERSION} \
 && ./contrib/download_prerequisites \
 && mkdir -p /tmp/gcc-build \
 && cd /tmp/gcc-build \
 && ../gcc-${GCC_VERSION}/configure --disable-multilib && make -j 4 && make install && echo "finished" \
 && echo "/usr/local/lib64" > usrLocalLib64.conf \
 && mv usrLocalLib64.conf /etc/ld.so.conf.d/ \
 # && ln -s /usr/local/lib64/libstdc++.so.6 /usr/lib64 \
# install R
 && curl -O https://cdn.rstudio.com/r/centos-6/pkgs/R-${R_VERSION}-1-1.x86_64.rpm \
 && yum install -y R-${R_VERSION}-1-1.x86_64.rpm \
 && ln -s /opt/R/${R_VERSION}/bin/R /usr/local/bin/R \
 && ln -s /opt/R/${R_VERSION}/bin/Rscript /usr/local/bin/Rscript \
# clean
 && yum erase -y wget \
 && yum clean all \
 && rm -rf /var/cache/yum \
 && rm -rf /tmp/gcc-${GCC_VERSION}.tar.gz /tmp/gcc-${GCC_VERSION} /tmp/gcc-build \
 && rm -rf R-${R_VERSION}-1-1.x86_64.rpm \
 && cd


# install r packages
RUN R -e "install.packages('caret', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('modelgrid', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('doMC', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('dplyr', repos='http://cran.us.r-project.org')"\
&& R -e "install.packages('mlr', repos='http://cran.us.r-project.org')"\
&& R -e "install.packages('glmnet', repos='http://cran.us.r-project.org')"\
&& R -e "install.packages('party', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('e1071', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('MLmetrics', repos='http://cran.us.r-project.org')"


RUN mkdir git projects
