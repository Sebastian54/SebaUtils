scoreboard objectives add HJTracking dummy
execute as @a[nbt={Inventory:[{id:"regeneration:hand_jar"}]}] unless entity @s[tag=Ban_Bypass] run scoreboard players set @s HJTracking 1
execute as @a at @s unless entity @s[tag=Ban_Bypass] if score @s HJTracking matches ..1 run tag @s add HJ_Ban
execute as @a at @s unless entity @s[tag=Ban_Bypass] if entity @s[tag=HJ_Ban] run clear @s regeneration:hand_jar
execute as @a[tag=HJ_Ban] at @s unless entity @s[tag=Ban_Bypass] unless entity @s[tag=HJ_BanSILENT] run tellraw @s ["",{"text":"The item ","color":"red"},{"text":"Hand Jar ","bold":true,"color":"gold"},{"text":"is currently banned, so it has been removed from your inventory. But don't worry, when it get's unbanned you will automatically be given it back.","color":"red"}]
execute as @a[tag=HJ_Ban] unless entity @s[tag=HJ_BanSILENT] unless entity @s[tag=Ban_Bypass] run tag @s add HJ_BanSILENT
execute as @a at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace regeneration:hand_jar