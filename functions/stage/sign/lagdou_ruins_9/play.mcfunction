teleport @s[scores={Error=0,Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure] -1280 25 -247
execute if entity @s[scores={Error=0,Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure] run data merge block -1289 52 -279 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_9/enter"}}'}
execute if entity @s[scores={Error=0,Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure] run setblock -1289 53 -281 minecraft:red_wool
scoreboard players set @s[scores={Error=0,Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure] Music 0
scoreboard players set @s[scores={Error=0,Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure] MusicType 4
execute if entity @s[scores={Error=0,Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute unless entity @s[scores={Error=0,Dialog=0,Level=45..}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.level","with":[{"text":"45"}]}]}
execute unless entity @s[scores={Error=0,Dialog=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.more","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"8"}]},{"text":"2"}]}]}
