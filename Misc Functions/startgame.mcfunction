#add tag to player - so that they can get info alert when they first interact with levers
tag @a add new


#When player begins game
#Kill all cats and replace with new ones
kill @e[type=cat]
function model:catspawn

#Kill wildlife and respawn
kill @e[type= parrot]
kill @e[type= goat]
kill @e[type= sheep]
kill @e[type=bee]
kill @e[type=frog]
kill @e[type=salmon]
kill @e[type=cod]
function model:habitatsetup

#fill chests
function model:chestfill

#Play title screen that says welcome and objective
title @p title {"text":"Welcome to Wildcat World","color":"blue"}
title @p subtitle {"text":"It's time to save the Scottish Wildcat Population","color":"white"}

#Set time as 1001 (day)
time set 1000

