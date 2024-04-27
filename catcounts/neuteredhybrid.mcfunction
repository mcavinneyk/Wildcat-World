#reset neutered hybrid cats count scoreboard
#add neutered hybrid cat count scoreboard
#count all hybrid domestic cats in population
scoreboard objectives remove neuteredgybridcount
scoreboard objectives add neuteredhybridcount dummy
scoreboard players add @p neuteredhybridcount 0
execute as @e[tag=neutered, tag=hybrid] run scoreboard players add @p neuteredhybridcount 1
title @a title {"text":"Neutered Hybrids ","color":"dark_purple"}
title @a subtitle {"text":"=","color":"dark_purple","extra":[{"score":{"name":"@p","objective":"neuteredhybridcount"}}]}