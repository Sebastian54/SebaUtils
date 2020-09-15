scoreboard objectives add VMTracking dummy
execute as @a[nbt={Inventory:[{id:"tardis:vm",Count:1b}]}] unless entity @s[tag=Ban_Bypass] run scoreboard players set @s VMTracking 1
execute as @a at @s unless entity @s[tag=Ban_Bypass] if score @s VMTracking matches ..1 run tag @s add VM_Ban
execute as @a at @s unless entity @s[tag=Ban_Bypass] if entity @s[tag=VM_Ban] run clear @s tardis:vm
execute as @a[tag=VM_Ban] at @s unless entity @s[tag=Ban_Bypass] unless entity @s[tag=VM_BanSILENT] run tellraw @s ["",{"text":"The item ","color":"red"},{"text":"Vortex Manipulator ","bold":true,"color":"gold"},{"text":"is currently banned, so it has been removed from your inventory. But don't worry, when it get's unbanned you will automatically be given it back.","color":"red"}]
execute as @a[tag=VM_Ban] unless entity @s[tag=VM_BanSILENT] unless entity @s[tag=Ban_Bypass] run tag @s add VM_BanSILENT