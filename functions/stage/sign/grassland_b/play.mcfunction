teleport @s[scores={Error=0,Dialog=0},gamemode=adventure] -1530 37 -370
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run data merge block -1541 52 -414 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/try/grassland_b/enter\"}}"}
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run setblock -1541 53 -416 minecraft:red_wool
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] MusicType 4
tellraw @s[scores={Error=0,Dialog=0},gamemode=adventure,tag=vs_cpus] {"translate":"medabots_server:settings.current.vs_cpus","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.on"}]}
tellraw @s[scores={Error=0,Dialog=0},gamemode=adventure,tag=!vs_cpus] {"translate":"medabots_server:settings.current.vs_cpus","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.off"}]}
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}