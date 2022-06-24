# Infant Gut Microbiota Over Space and Time

--INSTALLING--
Tested on Ubuntu 18 and 21.

Utilised libraries on Ubuntu 18:
libsbml5-dev  
qt5-default  
libglpk-dev  

Utilised libraries on Ubuntu 21:
qtbase5-dev  
qtchooser  
qt5-qmake  
qtbase5-dev-tools  
libsbml5-dev  
libgsl-dev  
xml2  
libxml++2.6-dev  
libfreetype-dev  
libglpk-dev  

These can all be retrieved from standard repositories using, e.g., 'sudo apt-get install libsbml5-dev'

By default the software also utilises libpngwriter for drawing visualisations, which can be retrieved from https://github.com/pngwriter/pngwriter 
pngwriter can be utilised by this software by compiling pngwriter from source and placing the pngwriter.h file in the /include directory, renaming the libPNGwriter.a file to libpngwriter.a, and placing that in the /lib directory

These are suggestions - the code can be modified to, for example, use a different solver.

--DEFAULT RESOURCE FILES--
Utilised bacterial models, all from AGORA version 1.03, originally retrieved from www.vmh.life:  
Bifidobacterium_breve_HPH0326  
Blautia_hansenii_VPI_C7_24_DSM_20583  
Bifidobacterium_longum_infantis_ATCC_15697  
Bifidobacterium_longum_longum_ATCC_55813  
Bacteroides_vulgatus_ATCC_8482  
Collinsella_aerofaciens_ATCC_25986  
Dorea_formicigenerans_ATCC_27755  
Enterobacter_cloacae_EcWSU1  
Escherichia_coli_SE11  
Enterococcus_faecalis_OG1RF_ATCC_47077  
Klebsiella_pneumoniae_pneumoniae_MGH78578  
Lactobacillus_gasseri_ATCC_33323  
Parabacteroides_distasonis_ATCC_8503  
Ruminococcus_gnavus_ATCC_29149  
Streptococcus_salivarius_JIM8777  
Veillonella_dispar_ATCC_17748  

The original versions that we used as a base for our changes can be found at [*link to other repo*](https://github.com/DMvers/IGMOSTdatafiles)

Newer versions may be available from www.vmh.life

Rename the model files to the following names for the default settings to work:
MODEL_Bbre.xml  
MODEL_Bhan.xml  
MODEL_BlongInf.xml  
MODEL_BlongLong.xml  
MODEL_Bvul.xml  
MODEL_Caer.xml  
MODEL_Dfor.xml  
MODEL_Eclo.xml  
MODEL_Ecol.xml  
MODEL_Efae.xml  
MODEL_Kpne.xml  
MODEL_Lgas.xml  
MODEL_Rgna.xml  
MODEL_Ssal.xml  
MODEL_Vdis.xml  

Change the "name" characteristic on line 3 of the models to the following for the default settings to work:
Bbre  
Bhan  
Binf  
Blong  
Bvul  
Caer  
Dfor  
Eclo  
Ecol  
Efae  
Kpne  
Lgas  
Pdis  
Rgna  
Ssal  
Vdis  

Now apply the changes described in 'Table of changed or deleted reactions and annotations.csv' to these models to create the versions we used in our paper

--USE--
Compile and run a simulation with the command "bash run_simulation.sh"
Please ensure there are no spaces in the directory name

The model can be run with different parameters by altering run_simulation.sh
Different bacterial models (any from www.vmh.life should be compatible) can be used by changing the references to xml files in simulation.cpp
