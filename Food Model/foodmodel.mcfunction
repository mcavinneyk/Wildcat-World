#FOOD MODEL
#set up hunger scoreboard
#If cat encounters a rabbit, its hunger score goes up by 1
#At night, hungry cats die of starvation
scoreboard objectives add hunger dummy
execute as @e[type=rabbit] at @s run execute as @e[type=cat,distance=..1] at @s run scoreboard players add @s hunger 1
execute if predicate model:night run kill @e[type=cat, scores={hunger=..2}]

#reset cats hunger scores when it becomes day
execute if predicate model:day run scoreboard players set @e[type=cat] hunger 0