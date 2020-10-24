scoreboard objectives add Balance dummy
scoreboard objectives add Deaths dummy
scoreboard objectives add DonatorParticles dummy
scoreboard objectives add Particles dummy
scoreboard objectives add ParticleToggle dummy
scoreboard objectives add CDRecovery dummy
scoreboard objectives add dimension dummy
scoreboard objectives add BossBarTimer dummy
scoreboard objectives add BossBarWords dummy
scoreboard objectives add ClearLagTimer dummy
scoreboard objectives add count dummy
scoreboard objectives add KickTimer dummy
scoreboard objectives add ClearLagTrigger trigger
scoreboard objectives add KyberTrigger trigger
scoreboard objectives add GlowOn trigger
scoreboard objectives add GlowOff trigger
scoreboard objectives add OffDuty trigger
scoreboard objectives add Staff trigger
scoreboard objectives add OptOutBossbar trigger
scoreboard objectives add OptInBossbar trigger
scoreboard objectives add rules trigger
scoreboard objectives add Void dummy
scoreboard objectives add SebaUtilsLagON dummy
scoreboard objectives add PlayerCount dummy
bossbar add 1 "test"
bossbar set minecraft:1 max 1
bossbar set minecraft:1 value 1
title @a actionbar "[DEBUG] Seba's Utilities has been loaded."
execute as @a at @s if score SebaUtilsFirst SebaUtilsFirst matches 2 run tellraw @s ["",{"text":"\n"},{"text":"Sorry about that!","color":"red"},{"text":"\n"},{"text":"We just had to reload to apply some changes.","color":"red"},{"text":"\n"}]
function sebautils:firsttime