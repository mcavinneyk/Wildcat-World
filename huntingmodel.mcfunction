#Spawn Hunter at start of day
execute if predicate model:day run summon villager 51 -60 154 {VillagerData:{type:"plains",profession:"fletcher",level:2},PersistenceRequired:1b,Tags:["hunter", "villager"]}
#if hunter comes 1 block away from cat, cat dies
execute as @e[tag=hunter] at @s run execute as @e[type=cat,distance=..3] at @s run kill @s

#If Hunter gets fined, they loose hunter tag and can no longer kill cats
execute as @e[type=villager,nbt={CustomName:'"HUNTING FINE"'}] run tag @s remove hunter

#Kill Hunter at end of day
execute if predicate model:night run teleport @e[tag=villager] 100 -60 600
execute if predicate model:night run kill @e[tag=villager]

