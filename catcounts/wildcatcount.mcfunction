#reset wildcat count scoreboard
#add wildcat count scoreboard
#count all wildcats in population
scoreboard objectives remove wildcatcount
scoreboard objectives add wildcatcount dummy
scoreboard players add @p wildcatcount 0
execute as @e[tag=wildcat] run scoreboard players add @p wildcatcount 1
title @a title {"text":"Wildcat Population = ","color":"gold"}
title @a subtitle {"text": "","color":"gold","extra":[{"score":{"name":"@p","objective":"wildcatcount"}}]}




