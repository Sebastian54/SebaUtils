scoreboard objectives add SCTracking dummy
execute as @a[nbt={Inventory:[{id:"create:schematicannon",Count:1b}]}] unless entity @s[tag=Ban_Bypass] run scoreboard players set @s SCTracking 1
execute as @a at @s unless entity @s[tag=Ban_Bypass] if score @s SCTracking matches ..1 run tag @s add SC_Ban
execute as @a at @s unless entity @s[tag=Ban_Bypass] if entity @s[tag=SC_Ban] run clear @s create:schematicannon
execute as @a[tag=SC_Ban] at @s unless entity @s[tag=Ban_Bypass] unless entity @s[tag=SC_BanSILENT] run tellraw @s ["",{"text":"The item ","color":"red"},{"text":"Schematicannon ","bold":true,"color":"gold"},{"text":"is currently banned, so it has been removed from your inventory. But don't worry, when it get's unbanned you will automatically be given it back.","color":"red"}]
execute as @a[tag=SC_Ban] unless entity @s[tag=SC_BanSILENT] unless entity @s[tag=Ban_Bypass] run tag @s add SC_BanSILENT
execute as @a at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace create:schematicannon