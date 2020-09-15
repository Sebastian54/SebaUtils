scoreboard objectives add CDTracking dummy
execute as @a at @s unless entity @s[tag=Ban_Bypass] if score @s CDTracking matches ..1 run scoreboard players set @s CDRecovery 1
execute as @a[nbt={Inventory:[{id:"regeneration:confession_dial"}]}] unless entity @s[tag=Ban_Bypass] run scoreboard players set @s CDTracking 1
execute as @a at @s unless entity @s[tag=Ban_Bypass] if score @s CDTracking matches ..1 run tag @s add CD_Ban
execute as @a at @s unless entity @s[tag=Ban_Bypass] if entity @s[tag=CD_Ban] run clear @s regeneration:confession_dial
execute as @a[tag=CD_Ban] at @s unless entity @s[tag=Ban_Bypass] unless entity @s[tag=CD_BanSILENT] run tellraw @s ["",{"text":"The item ","color":"red"},{"text":"Confession Dial ","bold":true,"color":"gold"},{"text":"is currently banned, so it has been removed from your inventory. But don't worry, when it get's unbanned you will automatically be given it back.","color":"red"}]
execute as @a[tag=CD_Ban] unless entity @s[tag=CD_BanSILENT] unless entity @s[tag=Ban_Bypass] run tag @s add CD_BanSILENT