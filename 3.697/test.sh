#!/bin/bash

module load phylip-suite

cat << EOF > input.file
data/protdist.input
Y
EOF

protdist < input.file

if [ -f input.file ]; then
	rm -f input.file
fi

if [ -f output ]; then
        cat output
	mv output protdist.output
fi
