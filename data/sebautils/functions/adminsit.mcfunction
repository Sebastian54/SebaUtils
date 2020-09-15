# admin sit beta v1
scoreboard players add AdminSitTimer AdminSitTimer 1
execute if score AdminSitTimer AdminSitTimer matches 1210 run scoreboard players set AdminSitTimer AdminSitTimer 0
execute if score AdminSitTimer AdminSitTimer matches 1200 run tellraw @a[team=Staff] ["",{"text":"\n"},{"text":"ALERT: There are currently ","bold":true,"color":"red"},{"score":{"name":"PendingSits","objective":"PendingSits"},"bold":true,"color":"dark_red"},{"text":" players that require assistance!","bold":true,"color":"red"},{"text":"\n"}]