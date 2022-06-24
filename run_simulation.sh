#!/bin/sh

rm *.o model Makefile

qmake simulation.pro
make 

#1. seed, (if a number between 1:100 is entered here, a new internal seed will be generated based on that number and the current time) 
#2. Number of iterations until the model is stopped, 
#3. lactate amount in umol to reach colon per 100ml infant nutrition,(normally unused) 
#4. glucose amount in umol to reach colon per 100ml infant nutrition,  (normally unused) 
#5. galactose amount in umol to reach colon per 100ml infant nutrition, (normally unused) 
#6. lactose amount in umol to reach colon per 100ml infant nutrition, 
#7 o2 released per step from the gut wall
#8 o2 initially placed on each square in umol
#9. Metabolic drift (if set to 10, move every other step, if set to 20, move every step. If set to 40, move twice every step)
#10. Number of columns (i.e. gut length)
#11 number of rows (i.e. gut width)
#12 replace biomass reaction with simpler, requiring only ATP (you usually want this)
#13. Save the energy balance for all reactions (does not influence simulation)
#14. cell drift: percentage chance if 0>n>1, movement in middle if 2, movement at top if 3, in vitro conditions if 4 - this includes shuffling every step and only having a single food input at the beginning, in vitro conditions plus prebiotics as discrete units if 5.
#15. during initialization place no (0) one kind (1) or all bacteria (2), or according to a specific file (3) 
#16 Filename to use if the previous setting is set to read from file (3). Do not place anything here otherwise, proceed immediately to the next parameter
#17. Generate  new bacteria never (0) only left and during the first 1000 steps (1), always left (2), always everywhere (3) , everywhere  for the first 6720 steps (4) with placement chance per eligible square of this%1
#18. Death rate setting. 0>i>1 for a purely linear setting with death chance i/20 per step per population, 2 for density-dependent 
#19. Growth modifier. Higher numbers make growing harder.
#20. Bacterial movement (diffusion) 0 is off, 1 is on
#21. Size of initial populations. A population of size 2 will reproduce if space is available
#22. Experiment mode - 0 = default, 1=knock out all lactate uptake, 2= knock out xfp (essential for the bifid shunt) 3=knock out lactose uptake for non-bif 
    #4= knock out lactose for non-bif after 5040 steps (10.5 days) 5= knock out oxygen use for E. coli 6= knock out lactate uptake by bifids
    #7= knock out e. coli lactate use through lactate dehydrogenase (only stops anaerobic use)
#23. Flux weight (how much each reaction contributes to the flux limit/enzyme constraint)
#24. Diffusion constant (will be divided by time scale)
#25. Cell fraction (Legacy parameter - influences the effective flux weight and growth modifier)
#26. Simulation directory name

name="Exp1"
i=1
iterations=10080
lactate=0
glucose=0
galactose=0
lactose=211
ox=0
initox=0
drift=20
columns=225
rows=8
bmreplace=1
energysave=0
celldrift=0
bacplace=2
colonization=3.00005
death=0.15
growth=4
bacmove=1
initsize=0.01
expmode=0
flux=0.00025
dif=4
cellfrac=0.025

./model ${i} ${iterations} ${lactate} ${glucose} ${galactose} ${lactose} ${ox} ${initox} ${drift} ${columns} ${rows} ${bmreplace} ${energysave} ${celldrift} ${bacplace} ${colonization} ${death} ${growth} ${bacmove} ${initsize} ${expmode} ${flux} ${dif} ${cellfrac} ${name}
