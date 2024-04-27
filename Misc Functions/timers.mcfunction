#CAT AGING
#Timer that begins when cat first spawns. Cats life span is 72000 ticks - 3 minecraft days
scoreboard objectives add aging dummy
execute as @p run scoreboard players add @e[tag=aging] aging 1
kill @e[tag=aging, scores={aging=72000}]