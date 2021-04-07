#!/bin/bash

IMAGE=singularity-phylip-3.697.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION
