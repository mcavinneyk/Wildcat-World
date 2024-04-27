#reset domestic cat count scoreboard
#add domestic cat count scoreboard
#count all domestic cats in population
scoreboard objectives remove domesticcatcount
scoreboard objectives add domesticcatcount dummy
scoreboard players add @p domesticcatcount 0
execute as @e[tag=domestic] run scoreboard players add @p domesticcatcount 1
title @a title {"text":"Domestic Cat Population","color":"gold"}
title @a subtitle {"text":"=","color":"gold","extra":[{"score":{"name":"@p","objective":"domesticcatcount"}}]}