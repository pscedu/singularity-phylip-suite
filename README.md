![Status](https://github.com/pscedu/singularity-phylip-suite/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-phylip-suite/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-phylip-suite)
![forks](https://img.shields.io/github/forks/pscedu/singularity-phylip-suite)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-phylip-suite)
![License](https://img.shields.io/github/license/pscedu/singularity-phylip-suite)

# singularity-phylip-suite
![Logo](https://evolution.genetics.washington.edu/phylip.gif)

Singularity recipe for [PHYLIP](https://evolution.genetics.washington.edu/phylip.html).


## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the scripts

to `/opt/packages/phylip-suite/3.697`.

Copy the file `modulefile.lua` to `/opt/modulefiles/phylip-suite` as `3.697.lua`.

## Building the image using the recipe
### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2021 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing
Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
