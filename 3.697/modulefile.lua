--
-- phylip-suite 3.697 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: PHYLIP is a free package of programs for inferring phylogenies."
-- "Keywords: singularity bioinformatics"

whatis("Name: phylip-suite")
whatis("Version: 3.697")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: PHYLIP is a free package of programs for inferring phylogenies.")

help([[
phylip-suite 3.697
------------------

Description
-----------
PHYLIP is a free package of programs for inferring phylogenies.

To load the module, type

> module load phylip-suite/3.697

To unload the module, type

> module unload phylip-suite/3.697

Documentation
-------------
https://evolution.genetics.washington.edu/phylip.html

There are no man pages available for this suite.

Repository
----------
https://evolution.genetics.washington.edu/phylip/sourcecode.html

Tools included in this module are

* dnapars
* dnamove
* dnapenny
* dnacomp
* dnainvar
* dnaml
* dnamlk
* dnadist
* seqboot
* consense
* protpars
* protdist
* proml
* promlk
* restml
* restdist
* fitch
* kitsch
* neighbor
* dnadist
* protdist
* gendist
* contml
* gendist
* contrast
* pars
* mix
* move
* penny
* dollop
* dolmove
* dolpenny
* clique
* factor
* drawgram
* drawtree
* treedist
* retree
]])

local package = "phylip-suite"
local version = "3.697"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
