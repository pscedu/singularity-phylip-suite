#!/bin/bash

# Copyright © 2021 Pittsburgh Supercomputing Center.
# All Rights Reserved.

TOOLS=(dnapars
dnamove
dnapenny
dnacomp
dnainvar
dnaml
dnamlk
dnadist
seqboot
consense
protpars
protdist
proml
promlk
restml
restdist
fitch
kitsch
neighbor
dnadist
protdist
gendist
contml
gendist
contrast
pars
mix
move
penny
dollop
dolmove
dolpenny
clique
factor
drawgram
drawtree
treedist
retree)

cat << EOF > template
#!/bin/bash

VERSION=3.697
PACKAGE=phylip-suite
TOOL=TOOL_NAME
DIRECTORY=$(dirname $0)

PERSISTENT_FILE_STORAGE=/ocean
if [ -d \$PERSISTENT_FILE_STORAGE ]; then
        OPTIONS="-B \$PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
        OPTIONS=\$OPTIONS" -B /local"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
        echo "* "$TOOL
        cp template $TOOL
        sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
        chmod +x $TOOL
done

rm -f template
