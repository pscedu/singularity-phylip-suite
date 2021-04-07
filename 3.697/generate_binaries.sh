#!/bin/bash

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

if [ ! \$(command -v singularity) ]; then
	module load singularity
fi

VERSION=3.697
PACKAGE=phylip-suite
TOOL=TOOL_NAME
DIRECTORY=/opt/packages/\$PACKAGE/\$VERSION

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
