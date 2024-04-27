#when player first interacts with player tell them what it does and then remove tag
execute if block 1 -60 212 minecraft:lever[powered=false] run tellraw @p[tag=new] ["",{"text":"Human Activity has caused habitat segregation.","bold":true,"color":"white"},{"text":"Due to building works, the wildcat park has been separated into smaller habitats meaning wildcats are cut off from one another, making it harder to find mates and prey. You can remove these walls by pulling the levers.","color":"white"}]
execute if block 1 -60 212 minecraft:lever[powered=false] run tag @p[tag=new] remove new 

#Build/Remove walls when lever pushed
execute if block 1 -60 210 minecraft:lever[powered=true] run fill 1 -60 211 119 -59 211 stone
execute if block 1 -60 210 minecraft:lever[powered=false] run fill 1 -60 211 119 -59 211 air
execute if block 1 -60 212 minecraft:lever[powered=true] run fill 1 -60 211 119 -59 211 stone
execute if block 1 -60 212 minecraft:lever[powered=false] run fill 1 -60 211 119 -59 211 air
execute if block 1 -60 111 minecraft:lever[powered=true] run fill 1 -60 112 119 -59 112 stone
execute if block 1 -60 111 minecraft:lever[powered=false] run fill 1 -60 112 119 -59 112 air
execute if block 1 -60 113 minecraft:lever[powered=true] run fill 1 -60 112 119 -59 112 stone
execute if block 1 -60 113 minecraft:lever[powered=false] run fill 1 -60 112 119 -59 112 air
execute if block 37 -60 1 minecraft:lever[powered=true] run fill 38 -60 1 38 -59 299 stone
execute if block 37 -60 1 minecraft:lever[powered=false] run fill 38 -60 1 38 -59 299 air

#set up treesplanted scoreboard - each time the player plants a tree their score goes up 1
    #oak
    scoreboard objectives add treesplanted dummy
    execute at @e[type=minecraft:arrow,nbt={inGround:1b,damage:47.5d}] run place feature minecraft:oak ~ ~ ~
    execute as @e[type=arrow,nbt={inGround:1b,damage:47.5d}] at @s run scoreboard players add @p oak 1
    kill @e[type=minecraft:arrow,nbt={inGround:1b,damage:47.5d}]
    #birch
    execute at @e[type=minecraft:arrow,nbt={inGround:1b,damage:42.5d}] run place feature minecraft:birch ~ ~ ~
    kill @e[type=minecraft:arrow,nbt={inGround:1b,damage:42.5d}]
    #spruce
    execute at @e[type=minecraft:arrow,nbt={inGround:1b,damage:46.5d}] run place feature minecraft:spruce ~ ~ ~
    kill @e[type=minecraft:arrow,nbt={inGround:1b,damage:46.5d}]

#Set up scoreboard that checks how many trees are planted
scoreboard objectives add oak dummy
execute as @e[type=arrow,nbt={inGround:1b,damage:47.5d}] at @s run scoreboard players add @p oak 1
scoreboard objectives add birch dummy
execute as @e[type=arrow,nbt={inGround:1b,damage:42.5d}] at @s run scoreboard players add @p birch 1
scoreboard objectives add spruce dummy
execute as @e[type=arrow,nbt={inGround:1b,damage:46.5d}] at @s run scoreboard players add @p spruce 1

#Set up tree planting progress bar
    #oak tree progress bar
        execute as @a[scores={oak=6..}] run setblock 41 -56 338 minecraft:redstone_torch
        execute as @a[scores={oak=12..}] run setblock 41 -56 339 minecraft:redstone_torch
        execute as @a[scores={oak=18..}] run setblock 41 -56 340 minecraft:redstone_torch
        execute as @a[scores={oak=24..}] run setblock 41 -56 341 minecraft:redstone_torch
        execute as @a[scores={oak=30..}] run setblock 41 -56 342 minecraft:redstone_torch
    #birch tree progress bar
        execute as @a[scores={birch=6..}] run setblock 41 -54 338 minecraft:redstone_torch
        execute as @a[scores={birch=12..}] run setblock 41 -54 339 minecraft:redstone_torch
        execute as @a[scores={birch=18..}] run setblock 41 -54 340 minecraft:redstone_torch
        execute as @a[scores={birch=24..}] run setblock 41 -54 341 minecraft:redstone_torch
        execute as @a[scores={birch=30..}] run setblock 41 -54 342 minecraft:redstone_torch
    #spruce tree progress bar
        execute as @a[scores={spruce=6..}] run setblock 41 -52 338 minecraft:redstone_torch
        execute as @a[scores={spruce=12..}] run setblock 41 -52 339 minecraft:redstone_torch
        execute as @a[scores={spruce=18..}] run setblock 41 -52 340 minecraft:redstone_torch
        execute as @a[scores={spruce=24..}] run setblock 41 -52 341 minecraft:redstone_torch
        execute as @a[scores={spruce=30..}] run setblock 41 -52 342 minecraft:redstone_torch




