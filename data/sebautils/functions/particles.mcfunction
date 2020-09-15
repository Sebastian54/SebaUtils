#Setup
scoreboard objectives add Particles dummy
scoreboard objectives add ParticleTimer dummy
scoreboard objectives add ParticleToggle dummy
execute as @a at @s unless score @s ParticleToggle matches 1 run scoreboard players set @s ParticleToggle 0
scoreboard players add ParticleTimer ParticleTimer 1
execute if score ParticleTimer ParticleTimer matches 25.. run scoreboard players set ParticleTimer ParticleTimer 0

scoreboard players enable @a[team=!Default] GlowOn
execute as @a at @s if score @s GlowOn matches 1 run tag @s add hasGlow
execute as @a[tag=hasGlow] at @s run effect give @s minecraft:glowing 30 255 true
execute as @a at @s if score @s GlowOn matches 1..6546546 run scoreboard players set @s GlowOn 0

scoreboard players enable @a[team=!Default] GlowOff
execute as @a at @s if score @s GlowOff matches 1 run tag @s remove hasGlow
execute as @a at @s if score @s GlowOff matches 1..6546546 run effect clear @s minecraft:glowing
execute as @a at @s if score @s GlowOff matches 1..6546546 run scoreboard players set @s GlowOff 0

scoreboard players enable @a[team=!Default] GlowOn
scoreboard players enable @a[team=!Default] GlowOff


#Particle Type 1
execute as @a[team=!Default,gamemode=!spectator] at @s if score @s ParticleToggle matches 0 if score @s Particles matches 1 if score ParticleTimer ParticleTimer matches 20 run particle minecraft:angry_villager ~ ~2.2 ~ 0 0 0 0.01 1 force

#Particle Type 2
execute as @a[team=!Default,gamemode=!spectator] at @s if score @s ParticleToggle matches 0 if score @s Particles matches 2 run particle minecraft:sneeze ~ ~0.2 ~ 0 0 0 0.01 2 force

#Particle Type 3
execute as @a[team=!Default,gamemode=!spectator] at @s if score @s ParticleToggle matches 0 if score @s Particles matches 3 run particle minecraft:end_rod ~ ~2.2 ~ 0 0 0 0.01 1

#Particle Type 4
execute as @a[team=!Default,gamemode=!spectator] at @s if score @s ParticleToggle matches 0 if score @s Particles matches 4 if score ParticleTimer ParticleTimer matches 20 run particle minecraft:note ~ ~2.2 ~ 0 0 0 0.01 1

#Particle Type 5
execute as @a[team=!Default,gamemode=!spectator] at @s if score @s ParticleToggle matches 0 if score @s Particles matches 5 if score ParticleTimer ParticleTimer matches 20 run particle minecraft:heart ~ ~2 ~ 0 0 0 0.05 1

#Particle Type 6
execute as @a[team=!Default,gamemode=!spectator] at @s if score @s ParticleToggle matches 0 if score @s Particles matches 6 run particle minecraft:entity_effect ~ ~ ~ 0 0 0 0.1 1 force

#Particle Type 7
execute as @a[team=!Default,gamemode=!spectator] at @s if score @s ParticleToggle matches 0 if score @s Particles matches 7 run particle minecraft:portal ~ ~ ~ 1 1 1 0.1 10

#Particle Type 8
execute as @a[team=!Default,gamemode=!spectator] at @s if score @s ParticleToggle matches 0 if score @s Particles matches 8 run particle minecraft:portal ~ ~ ~ 1 1 1 0.1 20