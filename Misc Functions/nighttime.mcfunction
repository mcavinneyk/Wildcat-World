#tell player it is night time
#teleport player back to bedroom when it is night time
#tell player how many wildcats are in the population
execute if predicate model:night run title @a title {"text":"Time for Bed!","color":"white"}
execute if predicate model:night run teleport @p 31 -46 325 
execute if predicate model:bedtime run function model:catcounts/wildcatcount

#refill chests 
execute if predicate model:bedtime run function model:chestfill