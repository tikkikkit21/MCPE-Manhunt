execute @a[tag=host,scores={settings_state=0}] ~~~ scoreboard objectives remove display
execute @s[tag=host,scores={settings_state=0}] ~~~ clear @a
execute @s[tag=host,scores={settings_state=0}] ~~~ kill @e[type=item]

scoreboard objectives add display dummy "§l§cManhunt"

scoreboard players set @s settings_healing 1
scoreboard players set @s timer_enabled 0
scoreboard players set @s settings_time 0
scoreboard players set @s settings_warmup 0
scoreboard players set @s settings_guide 0

scoreboard objectives setdisplay sidebar display
spreadplayers ~ ~ 1 2 @a
spawnpoint @a ~ 100 ~
setworldspawn ~ 100 ~
tag @s add host

scoreboard players set @a[tag=host] settings_state 1

time set day
gamerule doDaylightCycle false
gamerule showcoordinates true
gamerule spawnRadius 1
gamerule sendCommandFeedback false
gamerule pvp false
gamerule falldamage false

tellraw @s {"rawtext":[{"text":"§aSetup complete."}]}