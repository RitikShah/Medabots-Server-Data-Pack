tag @s add -1
tag @s add darkness
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_8/darkness
execute if entity @s[tag=vs_cpus] positioned -1264 41 5 run function medabots_server:stage/create/lagdou_ruins_8/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1290 49 29 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1289 51 -1 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1289 50 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/lagdou_ruins_8/darkness/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"8"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1291 51 -1 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1291 50 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_8/darkness/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
