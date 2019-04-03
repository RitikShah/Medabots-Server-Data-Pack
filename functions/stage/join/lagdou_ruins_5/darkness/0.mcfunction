tellraw @s[scores={Level=25..,Dialog=0,Error=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] {"translate":"medabots_server:message.stage.player.final","color":"green","extra":[{"text":" "},{"translate":"medabots_server:message.stage.player.wait","color":"green"}]}
execute if entity @s[scores={Level=25..,Dialog=0,Error=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"5"}]}]}
execute if entity @s[scores={Level=25..,Dialog=0,Error=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run data merge block -1345 51 -228 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[scores={Level=25..,Dialog=0,Error=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run setblock -1345 52 -230 minecraft:red_wool
execute if entity @s[scores={Level=25..,Dialog=0,Error=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run data merge block -1347 51 -228 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_5/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[scores={Level=25..,Dialog=0,Error=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run setblock -1347 52 -230 minecraft:red_wool
tag @s[scores={Level=25..,Dialog=0,Error=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] add enemy_medabot
tag @s[scores={Level=25..,Dialog=0,Error=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] add 0
execute if entity @s[scores={Level=25..,Dialog=0,Error=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run function medabots_server:stage/create/lagdou_ruins_5/darkness
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute unless entity @s[scores={Level=25..,Dialog=0,Error=0}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.level","with":[{"text":"25"}]}]}
execute unless entity @s[scores={Dialog=0,Error=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.more","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"4"}]},{"text":"2"}]}]}