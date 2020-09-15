scoreboard objectives add ClearLagTimer dummy
scoreboard players add ClearLagTimer ClearLagTimer 1
execute unless score SebaUtilsLagON SebaUtilsLagON matches 0 if score ClearLagTimer ClearLagTimer matches 11400 run tellraw @a ["",{"text":"[ClearLag] Entities will be cleared in 30 seconds","color":"red"}]
execute unless score SebaUtilsLagON SebaUtilsLagON matches 0 if score ClearLagTimer ClearLagTimer matches 11900 run tellraw @a ["",{"text":"[ClearLag] Entities will be cleared in 5 seconds","color":"red"}]
execute unless score SebaUtilsLagON SebaUtilsLagON matches 0 if score ClearLagTimer ClearLagTimer matches 11920 run tellraw @a ["",{"text":"[ClearLag] Entities will be cleared in 4 seconds","color":"red"}]
execute unless score SebaUtilsLagON SebaUtilsLagON matches 0 if score ClearLagTimer ClearLagTimer matches 11940 run tellraw @a ["",{"text":"[ClearLag] Entities will be cleared in 3 seconds","color":"red"}]
execute unless score SebaUtilsLagON SebaUtilsLagON matches 0 if score ClearLagTimer ClearLagTimer matches 11960 run tellraw @a ["",{"text":"[ClearLag] Entities will be cleared in 2 seconds","color":"red"}]
execute unless score SebaUtilsLagON SebaUtilsLagON matches 0 if score ClearLagTimer ClearLagTimer matches 11980 run tellraw @a ["",{"text":"[ClearLag] Entities will be cleared in 1 second","color":"red"}]
execute unless score SebaUtilsLagON SebaUtilsLagON matches 0 if score ClearLagTimer ClearLagTimer matches 12000 run function sebautils:clearlag
execute unless score SebaUtilsLagON SebaUtilsLagON matches 0 if score ClearLagTimer ClearLagTimer matches 12000 run tellraw @a ["",{"text":"[ClearLag] Entities have been cleared","color":"red"}]
execute if score ClearLagTimer ClearLagTimer matches 12010 run kill @e[type=minecraft:item]
execute unless score SebaUtilsLagON SebaUtilsLagON matches 0 if score ClearLagTimer ClearLagTimer matches 12020 run scoreboard players set ClearLagTimer ClearLagTimer 0