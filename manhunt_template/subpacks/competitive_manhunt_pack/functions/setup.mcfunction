#scoreboard setup
execute @s[tag=host,scores={settings_state=0}] ~~~ scoreboard objectives remove display
scoreboard objectives add display dummy "§l§cManhunt"
scoreboard objectives add counter dummy
scoreboard objectives add settings_state dummy
scoreboard objectives add speed_alive dummy
scoreboard objectives add hunt_alive dummy
scoreboard objectives add speedcount dummy
scoreboard objectives add huntcount dummy
scoreboard objectives add trackcount dummy
scoreboard objectives add applytrack dummy
scoreboard objectives add players dummy
scoreboard objectives add timer dummy
scoreboard objectives add settings_healing dummy
scoreboard objectives add settings_time dummy
scoreboard objectives add settings_warmup dummy
scoreboard objectives add timer_enabled dummy
scoreboard objectives add progress dummy
scoreboard objectives add spawn_time dummy
#default settings
scoreboard players set @s settings_healing 1
scoreboard players set @s timer_enabled 0
scoreboard players set @s settings_time 0
scoreboard players set @s settings_warmup 0

#tp to 0,0
scoreboard objectives setdisplay sidebar display
spreadplayers ~ ~ 1 2 @a
spawnpoint @a ~ 100 ~
setworldspawn ~ 100 ~
tag @s add host
#game states: 1 = set up finish, 2 = started
scoreboard players set @a[tag=host] settings_state 1
gamerule naturalRegeneration true
gamerule doDaylightCycle false
gamerule doimmediateRespawn false
gamerule showcoordinates true
gamerule spawnRadius 1
gamerule sendCommandFeedback false
gamerule pvp false
gamerule falldamage false
time set noon
tellraw @s {"rawtext":[{"text":"§aSetup complete."}]}
tellraw @s {"rawtext":[{"text":"―――――――――――――――――"}]}
tellraw @s {"rawtext":[{"text":"Default settings:"}]}
tellraw @s {"rawtext":[{"text":"Healing: §bEnabled"}]}
tellraw @s {"rawtext":[{"text":"Timer: §bDisabled"}]}
tellraw @s {"rawtext":[{"text":"Grace Period: §bDisabled"}]}
tellraw @s {"rawtext":[{"text":"Guides §l[BETA]§r: §bEnabled"}]}
tellraw @s {"rawtext":[{"text":"―――――――――――――――――"}]}
tellraw @s {"rawtext":[{"text":"§aYou can now allow players to join and use §e/function start§a to start the game."}]}
tellraw @s {"rawtext":[{"text":"§dIf you dislike the default settings, you may go to §e/function settings§d to change them."}]}
tellraw @s {"rawtext":[{"text":"§bIf you want to track a player, type §f/tag [player] add track"}]}
tellraw @s {"rawtext":[{"text":"§bIf you track zero or more than one player, the game will select one for them."}]}
tellraw @s {"rawtext":[{"text":"§ePlease make sure that you do NOT leave until the game ends, or the game will corrupt."}]}