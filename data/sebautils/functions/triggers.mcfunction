scoreboard objectives add BalanceTrigger trigger
scoreboard players enable @a BalanceTrigger
execute as @a at @s if score @s BalanceTrigger matches 1 run tellraw @s ["",{"text":"\n"},{"text":"Current Balance for ","color":"white"},{"selector":"@s","color":"gold"},{"text":"\n"},{"text":"Available Balance: ","color":"white"},{"score":{"name":"@s","objective":"Balance"},"color":"gold"},{"text":"\n"}]
execute as @a at @s if score @s BalanceTrigger matches 1..6546546 run scoreboard players set @s BalanceTrigger 0

scoreboard players enable @a[team=Staff] ClearLagTrigger
scoreboard players enable @a[tag=ClearLag] ClearLagTrigger
execute as @a at @s if score @s ClearLagTrigger matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" manually activated "},{"text":"ClearLag!","color":"gold"}]
execute as @a at @s if score @s ClearLagTrigger matches 1 run scoreboard players set ClearLagTimer ClearLagTimer 11899
execute as @a at @s if score @s ClearLagTrigger matches 1..6546546 run scoreboard players set @s ClearLagTrigger 0

scoreboard objectives add KyberTrigger trigger
scoreboard players enable @a[team=Staff] KyberTrigger
execute as @a at @s if score @s KyberTrigger matches 1 run tellraw @s ["",{"text":"Kyber Crystal Colour Picker","underlined":true,"color":"gold"},{"text":"\n"},{"text":"\n"},{"text":"[RED]  ","color":"dark_red","clickEvent":{"action":"run_command","value":"/give @s galaxysedge:kyber_crystal{\"red\": 255, \"green\" : 0, \"blue\" : 0}"}},{"text":"[ORANGE]  ","color":"gold","clickEvent":{"action":"run_command","value":"/give @s galaxysedge:kyber_crystal{\"red\": 255, \"green\" : 127, \"blue\" : 0}"}},{"text":"[YELLOW]  ","color":"yellow","clickEvent":{"action":"run_command","value":"/give @s galaxysedge:kyber_crystal{\"red\": 255, \"green\" : 255, \"blue\" : 0}"}},{"text":"[GREEN]  ","color":"green","clickEvent":{"action":"run_command","value":"/give @s galaxysedge:kyber_crystal{\"red\": 0, \"green\" : 255, \"blue\" : 0}"}},{"text":"[BLUE]  ","color":"dark_blue","clickEvent":{"action":"run_command","value":"/give @s galaxysedge:kyber_crystal{\"red\": 0, \"green\" : 0, \"blue\" : 255}"}},{"text":"[INDIGO]  ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/give @s galaxysedge:kyber_crystal{\"red\": 46, \"green\" : 43, \"blue\" : 95}"}},{"text":"[VIOLET]  ","color":"light_purple","clickEvent":{"action":"run_command","value":"/give @s galaxysedge:kyber_crystal{\"red\": 139, \"green\" : 0, \"blue\" : 255}"}}]
execute as @a at @s if score @s KyberTrigger matches 1..6546546 run scoreboard players set @s KyberTrigger 0

execute as @a at @s run execute store result score @s dimension run data get entity @s Dimension

bossbar set minecraft:1 players @a[tag=!OptOutBossbar]
execute if score BossBarTimer BossBarTimer matches 161 run scoreboard players set BossBarTimer BossBarTimer 0
scoreboard players add BossBarTimer BossBarTimer 1
execute if score BossBarTimer BossBarTimer matches 20 run bossbar set minecraft:1 color blue
execute if score BossBarTimer BossBarTimer matches 40 run bossbar set minecraft:1 color green
execute if score BossBarTimer BossBarTimer matches 60 run bossbar set minecraft:1 color pink
execute if score BossBarTimer BossBarTimer matches 80 run bossbar set minecraft:1 color purple
execute if score BossBarTimer BossBarTimer matches 100 run bossbar set minecraft:1 color red
execute if score BossBarTimer BossBarTimer matches 120 run bossbar set minecraft:1 color white
execute if score BossBarTimer BossBarTimer matches 140 run bossbar set minecraft:1 color yellow

scoreboard players enable @a OptOutBossbar
execute as @a at @s if score @s OptOutBossbar matches 1 run tag @s add OptOutBossbar
execute as @a at @s if score @s OptOutBossbar matches 1 run bossbar set minecraft:1 players
execute as @a at @s if score @s OptOutBossbar matches 1 run tellraw @s "Successfully Opted Out"
execute as @a at @s if score @s OptOutBossbar matches 1 run scoreboard players set @s OptOutBossbar 0

scoreboard players enable @a OptInBossbar
execute as @a at @s if score @s OptInBossbar matches 1 run tag @s remove OptOutBossbar
execute as @a at @s if score @s OptInBossbar matches 1 run bossbar set minecraft:1 players @s
execute as @a at @s if score @s OptInBossbar matches 1 run tellraw @s "Successfully Opted In"
execute as @a at @s if score @s OptInBossbar matches 1 run scoreboard players set @s OptInBossbar 0

scoreboard players enable @a[team=Staff] Staff
execute as @a at @s if score @s Staff matches 1 run team join Staff @s
execute as @a at @s if score @s Staff matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" is now On Duty"}]
execute as @a at @s if score @s Staff matches 1..6546546 run scoreboard players set @s Staff 0

scoreboard players enable @a[team=Staff] OffDuty
execute as @a at @s if score @s OffDuty matches 1 run team join OffDutyStaff @s
execute as @a at @s if score @s OffDuty matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" is now Off Duty"}]
execute as @a at @s if score @s OffDuty matches 1..6546546 run scoreboard players set @s OffDuty 0

scoreboard players enable @a rules
execute as @a at @s if score @s rules matches 1 run tellraw @s ["",{"text":"Rules -","color":"red"},{"text":"\n"},{"text":"1. No griefing or stealing from other players","color":"red"},{"text":"\n"},{"text":"2. No spawn killing/teleport killing players","color":"red"},{"text":"\n"},{"text":"3. No hijacking people's Tardises, or stealing their components","color":"red"},{"text":"\n"},{"text":"4. Mob farms are allowed, but they must be approved by Staff first","color":"red"},{"text":"\n"},{"text":"5. No AFK Pools/ AFK Farms","color":"red"},{"text":"\n"},{"text":"6. No Redstone Zero Tick/Looping Circuits/Contraptions","color":"red"},{"text":"\n"},{"text":"7. Don't Be a Dick/Disrespect Other Players.","color":"red"}]
execute as @a at @s if score @s rules matches 1 run scoreboard players reset @s rules
execute as @a at @s if score @s rules matches 1..6546546 run scoreboard players set @s Staff 0