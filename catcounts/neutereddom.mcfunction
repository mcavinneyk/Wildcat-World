#add neutered domestic cat count scoreboard
#count all neutered domestic cats in population
scoreboard objectives remove neutereddomesticcatcount
scoreboard objectives add neutereddomesticcatcount dummy
scoreboard players add @p neutereddomesticcatcount 0
execute as @e[tag=neutered, tag=domestic] run scoreboard players add @p neutereddomesticcatcount 1
title @a title {"text":"Neutered Domestic Cats","color":"dark_purple"}
title @a subtitle {"text":" = ","color":"dark_purple","extra":[{"score":{"name":"@p","objective":"neutereddomesticcatcount"}}]}