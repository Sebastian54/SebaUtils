execute as @a at @s if score @s dimension matches 2 if entity @s[y=256,dy=1] run execute in minecraft:overworld run tp @s -1 80 5
execute as @a at @s if score @s dimension matches -1 if entity @s[y=128,dy=1] run execute in minecraft:overworld run tp @s -1 80 5
execute as @a at @s if entity @s[y=-25,dy=1] unless score @s dimension matches 4 run scoreboard players set @s Void 1
execute as @a at @s if entity @s[y=-26,dy=1] unless score @s dimension matches 4 run scoreboard players set @s Void 1
execute as @a at @s if entity @s[y=-27,dy=1] unless score @s dimension matches 4 run scoreboard players set @s Void 1
execute as @a at @s if entity @s[y=-28,dy=1] unless score @s dimension matches 4 run scoreboard players set @s Void 1
execute as @a at @s if entity @s[y=-29,dy=1] unless score @s dimension matches 4 run scoreboard players set @s Void 1
execute as @a at @s if score @s Void matches 1 run tellraw @s ["",{"text":"\n"},{"text":"It appears you went outside of the world..","color":"red"},{"text":"\n"},{"text":"You have been relocated to a safe space.","color":"red"},{"text":"\n"}]
execute as @a at @s if score @s Void matches 1 run effect give @s minecraft:slow_falling 3 255 true
execute as @a at @s if score @s Void matches 1 run tp @s 1 129 1
execute as @a at @s if score @s Void matches 1 run scoreboard players set @s Void 0