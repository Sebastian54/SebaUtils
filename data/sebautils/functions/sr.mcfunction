scoreboard objectives add SRTracking dummy
execute as @a[nbt={Inventory:[{id:"tardis:stattenheim_remote",Count:1b}]}] unless entity @s[tag=Ban_Bypass] run scoreboard players set @s SRTracking 1
execute as @a at @s unless entity @s[tag=Ban_Bypass] if score @s SRTracking matches ..1 run tag @s add SR_Ban
execute as @a at @s unless entity @s[tag=Ban_Bypass] if entity @s[tag=SR_Ban] run clear @s tardis:stattenheim_remote
execute as @a[tag=SR_Ban] at @s unless entity @s[tag=Ban_Bypass] unless entity @s[tag=SR_BanSILENT] run tellraw @s ["",{"text":"The item ","color":"red"},{"text":"Stattenheim Remote ","bold":true,"color":"gold"},{"text":"is currently banned, so it has been removed from your inventory. But don't worry, when it get's unbanned you will automatically be given it back.","color":"red"}]
execute as @a[tag=SR_Ban] unless entity @s[tag=SR_BanSILENT] unless entity @s[tag=Ban_Bypass] run tag @s add SR_BanSILENT