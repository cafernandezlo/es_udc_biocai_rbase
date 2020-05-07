# es_udc_biocai_rbase

Or how to run modern stuff over an old CentOS-6.

![Docker Pulls](https://img.shields.io/docker/pulls/cafernandezlo/es_udc_biocai_rbase.svg)
![Docker Stars](https://img.shields.io/docker/stars/cafernandezlo/es_udc_biocai_rbase.svg)
![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/Naereen/StrapDown.js/blob/master/LICENSE)
![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)

**A docker image to be used on biocai machines**

- [cafernandezlo/biocai](#cafernandezloes_udc_biocai_rbase)
	- [Contributing](#contributing)
	- [Quick Start](#quick-start)
	- [Description](#description)
## Contributing
If you find this image useful here's how you can help:

- Send a pull request with your kickass new features and bug fixes
- Star this repo!

## Quick Start

Run docker image:

	docker pull cafernandezlo/es_udc_biocai_rbase:3.6.3-1.0.0

## Description
List of libraries and software:

- FROM centos:centos6
- System libraries: curl, wget, texinfo-tex, flex, zip, libgcc, glibc-devel, gcc, g++, gcc-c++, zlib, zlib-devel, bzip2, bzip2-devel, xz, xz-devel, pcre, pcre-devel, curl-devel, readline-devel, libxml2-devel, epel-release, gcc-6.3.0, R-3.6.3
- R packages (and dependencies): caret, modelgrid, doMC, dplyr, mlr, party 
