# THIS CODE IS WRITTEN ASSUMING THAT SEBAUTILSADV IS INSTALLED ALONGSIDE, IF NOT THEN ISSUES WILL RISE

scoreboard objectives add BanSystemTimer dummy
scoreboard players add BanSystemTimer BanSystemTimer 1
advancement grant @a only sebautilsadv:root
execute as @a[tag=VM_Ban] at @s run advancement grant @s only sebautilsadv:banneditem
execute as @a[tag=SR_Ban] at @s run advancement grant @s only sebautilsadv:banneditem
execute as @a[tag=SC_Ban] at @s run advancement grant @s only sebautilsadv:banneditem
execute as @a[tag=HJ_Ban] at @s run advancement grant @s only sebautilsadv:banneditem
execute as @a[tag=CD_Ban] at @s run advancement grant @s only sebautilsadv:banneditem
execute as @a[tag=HO_Ban] at @s run advancement grant @s only sebautilsadv:banneditem
execute if score BanSystemTimer BanSystemTimer matches 300 run scoreboard players set BanSystemTimer BanSystemTimer 0

function sebautils:particles
function sebautils:clearlagtimer
function sebautils:bossbar
# function sebautils:sc -- No longer needed by server.
function sebautils:cd
function sebautils:hj
function sebautils:hopper
function sebautils:triggers
function sebautils:clearentities
function sebautils:voidsave
# function sebautils:adminsit -- This will cause issues if enabled.

# execute as @a at @s unless score @s dimension matches 3 run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace tardis:broken_exterior -- This will cause issues if enabled.
# execute as @a at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace create:encased_fan -- This will cause issues if enabled.

# execute as @a[x=-1982,z=1597,distance=..150] at @s if score @s dimension matches 0 run teleport @s -56 64 32 -45.6 8.4 -- This will cause issues if enabled. 

# kill @e[type=weeping_angels:weeping_angel] -- This will cause issues if enabled.

execute as @a[tag=!init] run tellraw @a ["",{"selector":"@s"},{"text":" just logged in for the first time!"}]
execute as @a[tag=!init] at @s run execute as @a at @s run playsound immersiveengineering:birthday_party master @p ~ ~ ~ 0.1 1
execute as @a[tag=!init] at @s run scoreboard players set @s Balance 100
# execute as @a[tag=!init] at @s run team join Default
tag @a[tag=!init] add init

execute as @a at @s if score @s leave matches 1..7856774
execute if score KickTimer KickTimer matches 451 run scoreboard players set @a[scores={leave=1..7856774}] leave 0

execute if score BanSystemTimer BanSystemTimer matches 100 as @a[team=!Staff,team=!StaffSIMP,team=!OffDutyStaff,team=!Friend,team=!dYoutuber,team=!Donator,team=!StaffAFK,team=!OffDutyStaffAFK,team=!FriendAFK,team=!YoutubeAFK,team=!DonatorAFK,team=!CC,team=!police,team=!Sith,team=!Simp,team=!Valeyard,team=!DonatorPurple,team=!TheNeo,team=!SWDBae,team=!Engineer,team=!Architect,team=!hidetag,team=!TraineeStaff,team=!Time_Lord,team=!Atlas,team=!President,team=!LordMitch,team=!TimeLordSpectrum,team=!Legend,team=!NoodleMan,team=!TimeLordEntityHo] at @s run team join Default