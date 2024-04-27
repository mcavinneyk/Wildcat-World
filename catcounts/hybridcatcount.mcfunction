#reset hybrid cat count scoreboard
#add hybrid cat count scoreboard
#count all hybrid cats in population
scoreboard objectives remove hybridcatcount
scoreboard objectives add hybridcatcount dummy
scoreboard players add @p hybridcatcount 0
execute as @e[tag=hybrid] run scoreboard players add @p hybridcatcount 1
title @a title {"text":"Hybrid Population = ","color":"gold"}
title @a subtitle {"text":" ","color":"gold","extra":[{"score":{"name":"@p","objective":"hybridcatcount"}}]}