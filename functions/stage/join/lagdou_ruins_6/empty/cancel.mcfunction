execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"6"}]}]}
execute if entity @s[tag=-1] run data merge block -1235 52 -139 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1235 53 -141 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1229 25 -94
execute if entity @s[tag=-1] run data merge block -1237 52 -139 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_6/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1237 53 -141 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1