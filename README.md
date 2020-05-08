# es_udc_biocai_rbase

Or how to run modern stuff over an old CentOS-6.

![Docker Pulls](https://img.shields.io/docker/pulls/cafernandezlo/es_udc_biocai_rbase.svg)
![Docker Stars](https://img.shields.io/docker/stars/cafernandezlo/es_udc_biocai_rbase.svg)
[![GitHub tag](https://img.shields.io/github/tag/Naereen/StrapDown.js.svg)](https://GitHub.com/Naereen/StrapDown.js/tags/)
[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/Naereen/StrapDown.js/blob/master/LICENSE)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)

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
- R packages (and dependencies): caret, modelgrid, doMC, dplyr, mlr, party, glmnet 

```sh
> sessionInfo()
R version 3.6.3 (2020-02-29)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: CentOS release 6.10 (Final)

Matrix products: default
BLAS/LAPACK: /usr/lib64/libopenblasp-r0.3.3.so

locale:
[1] C

attached base packages:
 [1] stats4    grid      parallel  stats     graphics  grDevices utils    
 [8] datasets  methods   base     

other attached packages:
 [1] party_1.3-4       strucchange_1.5-2 sandwich_2.5-1    zoo_1.8-8        
 [5] modeltools_0.2-23 mvtnorm_1.1-0     mlr_2.17.1        ParamHelpers_1.14
 [9] dplyr_0.8.5       doMC_1.3.6        iterators_1.0.12  foreach_1.5.0    
[13] modelgrid_1.1.1.0 caret_6.0-86      ggplot2_3.3.0     lattice_0.20-38  
[17] glmnet_3.0-2      Matrix_1.2-18    

loaded via a namespace (and not attached):
 [1] Rcpp_1.0.4.6         lubridate_1.7.8      class_7.3-15        
 [4] assertthat_0.2.1     ipred_0.9-9          R6_2.4.1            
 [7] plyr_1.8.6           backports_1.1.6      pillar_1.4.4        
[10] rlang_0.4.6          multcomp_1.4-13      data.table_1.12.8   
[13] rpart_4.1-15         checkmate_2.0.0      splines_3.6.3       
[16] gower_0.2.1          stringr_1.4.0        munsell_0.5.0       
[19] compiler_3.6.3       pkgconfig_2.0.3      shape_1.4.4         
[22] libcoin_1.0-5        BBmisc_1.11          nnet_7.3-12         
[25] tidyselect_1.0.0     tibble_3.0.1         prodlim_2019.11.13  
[28] coin_1.3-1           codetools_0.2-16     matrixStats_0.56.0  
[31] crayon_1.3.4         withr_2.2.0          MASS_7.3-51.5       
[34] recipes_0.1.12       ModelMetrics_1.2.2.2 nlme_3.1-144        
[37] gtable_0.3.0         lifecycle_0.2.0      magrittr_1.5        
[40] pROC_1.16.2          scales_1.1.0         stringi_1.4.6       
[43] reshape2_1.4.4       parallelMap_1.5.0    timeDate_3043.102   
[46] ellipsis_0.3.0       generics_0.0.2       vctrs_0.2.4         
[49] fastmatch_1.1-0      TH.data_1.0-10       lava_1.6.7          
[52] tools_3.6.3          glue_1.4.0           purrr_0.3.4         
[55] survival_3.1-8       colorspace_1.4-1 
```
