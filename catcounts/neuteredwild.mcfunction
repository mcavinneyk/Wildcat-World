
#reset neutered wildcat cats count scoreboard
#add neutered wildcat cat count scoreboard
#count all wildcat domestic cats in population
scoreboard objectives remove neuteredwildcatcount
scoreboard objectives add neuteredwildcatcount dummy
scoreboard players add @p neuteredwildcatcount 0
execute as @e[tag=neutered, tag=wildcat] run scoreboard players add @p neuteredwildcatcount 1
title @a title {"text":"Neutered Wildcats = ","color":"dark_purple"}
title @a subtitle {"text":" ","color":"dark_purple","extra":[{"score":{"name":"@p","objective":"neuteredwildcatcount"}}]}
