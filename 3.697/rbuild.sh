#!/bin/bash

IMAGE=singularity-phylip-3.697.sif
DEFINITION=Singularity

singularity build --remote $IMAGE $DEFINITION
