#call pregnancy scoreboard for mating
    scoreboard objectives add pregnancy dummy
   
    scoreboard players add @e[tag=pregnant_wild] pregnancy 1
    scoreboard players add @e[tag=pregnant_hyb] pregnancy 1
    scoreboard players add @e[tag=pregnant_dom] pregnancy 1


#call young scoreboard to time offspring sexual maturity
     scoreboard objectives add maturation dummy


#WILDCAT X WILDCAT MATING    
    #if a fertile female and male wildcat meet:
    #50% chance of vale pregnancy occuring
    #remove tag fertile and add tag pregnant
    #start pregnancy timer
    #cat has wildcat kitten after 15 seconds of pregnancy
    execute as @e[tag=male, tag=fertile, tag= wildcat, tag=!neutered] at @s if entity @e[tag=fertile, tag= wildcat, distance=..1] if predicate model:sex run tag @s add pregnant_wild 
    execute as @e[tag=male, tag=fertile, tag= wildcat, tag=!neutered] at @s if entity @e[tag=fertile, tag= wildcat, distance=..1] if predicate model:sex run tag @s remove fertile
    execute as @a[tag=pregnant_wild, scores={pregnancy=300}] run summon cat ~ ~ ~ {variant:"tabby",Tags:["wildcat", "young", "aging"], Age:-24000}


#WILDCAT X DOMESTIC CAT MATING
    #if a fertile female wildcat and male domestic cat meet:
    #remove tag fertile and add tag pregnant
    #start pregnancy timer
    #cat has hybrid kitten after 15 seconds of pregnancy
    execute as @e[tag=male, tag=fertile, tag= domestic, tag=!neutered] at @s run execute as @e[tag=fertile, tag= wildcat, distance=..1] if predicate model:sex run tag @s add pregnant_hyb
    execute as @e[tag=male, tag=fertile, tag= domestic, tag=!neutered] at @s run execute as @e[tag=fertile, tag= wildcat, distance=..1] if predicate model:sex run tag @s remove fertile
    execute as @e[tag=pregnant_hyb,  scores={pregnancy=300}] at @s run summon cat ~ ~ ~ {variant:"siamese",Tags:["hybrid", "young", "aging"], Age:-24000}

    #if a fertile female domestic cat and male wildcat cat meet:
    #remove tag fertile and add tag pregnant
    #start pregnancy timer
    #cat has hybrid kitten after 15 seconds of pregnancy
    execute as @e[tag=male, tag=fertile, tag= wildcat, tag=!neutered] at @s run execute as @e[tag=fertile, tag= domestic, distance=..1] if predicate model:sex run tag @s add pregnant_hyb 
    execute as @e[tag=male, tag=fertile, tag= wildcat, tag=!neutered] at @s run execute as @e[tag=fertile, tag= domestic, distance=..1] if predicate model:sex run tag @s remove fertile
    execute as @e[tag=pregnant_hyb, scores={pregnancy=300}] at @s run summon cat ~ ~ ~ {variant:"siamese",Tags:["hybrid", "young", "aging"], Age:-24000}
 
#DOMESTIC X DOMESTIC CAT MATING
    #if a fertile female domestic and male domestic cat meet:
    #remove tag fertile and add tag pregnant
    #start pregnancy timer
    #cat has domestic kitten after 15 seconds of pregnancy
    execute as @e[tag=male, tag=fertile, tag= domestic, tag=!neutered] at @s run execute as @e[tag=fertile, tag= domestic, distance=..1] if predicate model:sex run tag @s add pregnant_dom 
    execute as @e[tag=male, tag=fertile, tag= domestic, tag=!neutered] at @s run execute as @e[tag=fertile, tag= domestic, distance=..1] if predicate model:sex run tag @s remove fertile
    execute as @e[tag=pregnant_dom, scores={pregnancy=300}] at @s run summon cat ~ ~ ~ {variant:"calico",Tags:["domestic", "young", "aging"],Age:-24000}

#HYBRID X DOMESTIC CAT MATING
    #if a fertile female hybrid and male domestic cat meet:
    #remove tag fertile and add tag pregnant
    #start pregnancy timer
    #cat has domestic kitten after 15 seconds of pregnancy
    execute as @e[tag=male, tag=fertile, tag= domestic, tag=!neutered] at @s run execute as @e[tag=fertile, tag= hybrid, distance=..1] if predicate model:sex run tag @s add pregnant_dom
    execute as @e[tag=male, tag=fertile, tag= domestic, tag=!neutered] at @s run execute as @e[tag=fertile, tag= hybrid, distance=..1] if predicate model:sex run tag @s remove fertile
    execute as @e[tag=pregnant_dom, scores={pregnancy=300}] at @s run summon cat ~ ~ ~ {variant:"calico",Tags:["domestic", "young", "aging"], Age:-24000}

    #if a fertile female domestic cat and male hybrid cat meet:
    #remove tag fertile and add tag pregnant
    #start pregnancy timer
    #cat has domestic kitten after 15 seconds of pregnancy
    execute as @e[tag=male, tag=fertile, tag= hybrid, tag=!neutered] at @s run execute as @e[tag=fertile, tag= domestic, distance=..1] if predicate model:sex run tag @s add pregnant_dom 
    execute as @e[tag=male, tag=fertile, tag= hybrid, tag=!neutered] at @s run execute as @e[tag=fertile, tag= domestic, distance=..1] if predicate model:sex run tag @s remove fertile
    execute as @e[tag=pregnant_dom, scores={pregnancy=300}] at @s run summon cat ~ ~ ~ {variant:"calico",Tags:["domestic", "young", "aging"], Age:-24000}

#HYBRID X WILDCAT CAT MATING
    #if a fertile female hybrid and male wildcat meet:
    #remove tag fertile and add tag pregnant
    #start pregnancy timer
    #cat has wildcat kitten after 15 seconds of pregnancy
    execute as @e[tag=male, tag=fertile, tag= wildcat, tag=!neutered] at @s run execute as @e[tag=fertile, tag= hybrid, distance=..1] if predicate model:sex run tag @s add pregnant_wild 
    execute as @e[tag=male, tag=fertile, tag= wildcat, tag=!neutered] at @s run execute as @e[tag=fertile, tag= hybrid, distance=..1] if predicate model:sex run tag @s remove fertile
    execute as @e[tag=pregnant_wild, scores={pregnancy=300}] at @s run summon cat ~ ~ ~ {variant:"tabby",Tags:["wildcat", "young", "aging"], Age:-24000}

    #if a fertile female wildcat and male hybrid cat meet:
    #remove tag fertile and add tag pregnant
    #start pregnancy timer
    #cat has wildcat kitten after 15 seconds of pregnancy
    execute as @e[tag=male, tag=fertile, tag= hybrid, tag=!neutered] at @s run execute as @e[tag=fertile, tag= wildcat, distance=..1] if predicate model:sex run tag @s add pregnant_wild 
    execute as @e[tag=male, tag=fertile, tag= hybrid, tag=!neutered] at @s run execute as @e[tag=fertile, tag= wildcat, distance=..1] if predicate model:sex run tag @s remove fertile
    execute as @e[tag=pregnant_wild, scores={pregnancy=300}] at @s run summon cat ~ ~ ~ {variant:"tabby",Tags:["wildcat", "young", "aging"], Age:-24000}

#HYBRID X HYBRID CAT MATING
    #if a fertile female hybrid and male hybrid cat meet:
    #remove tag fertile and add tag pregnant
    #start pregnancy timer
    #cat has hybrid kitten after 15 seconds of pregnancy
    execute as @e[tag=male, tag=fertile, tag= hybrid, tag=!neutered] at @s run execute as @e[tag=fertile, tag= hybrid, distance=..1] if predicate model:sex run tag @s add pregnant_hyb 
    execute as @e[tag=male, tag=fertile, tag= hybrid, tag=!neutered] at @s run execute as @e[tag=fertile, tag= hybrid, distance=..1] if predicate model:sex run tag @s remove fertile
    execute as @e[tag=pregnant_hyb, scores={pregnancy=300}] at @s run summon cat ~ ~ ~ {variant:"siamese",Tags:["hybrid", "young", "aging"], Age:-24000}

#after 3000 ticks make female cats fertile again
    #reset timer
    execute as @e[tag=pregnant_wild, scores={pregnancy=24000}] run tag @s remove pregnant_wild 
    execute as @e[tag=pregnant_hyb, scores={pregnancy=24000}] run tag @s remove pregnant_hyb
    execute as @e[tag=pregnant_dom, scores={pregnancy=24000}] run tag @s remove pregnant_dom 
    execute as @e[scores={pregnancy=24000}] run tag @s add fertile
    execute as @e[scores={pregnancy=24000..}] run scoreboard players set @s pregnancy 0

#randomly sexing young
scoreboard players add @e[tag=young] maturation 1
execute as @e[type=cat,tag=young, scores={maturation=300}] if predicate model:sex run tag @s add male


#Making Females Fertile
execute as @e[tag=young, tag=!male, scores={maturation=310}] run tag @s add female
execute as @e[tag=female, scores={maturation=24000}] run tag @s add fertile 
execute as @e[scores={maturation=24000}] run tag @s remove young

#Neuter Cats using Leash
execute as @e[type=cat] if data entity @s Leash run tag @s add neutered
execute as @e[type=cat] if data entity @s Leash run tag @s remove fertile