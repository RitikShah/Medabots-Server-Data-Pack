tag @s add -1
tag @s add darkness
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_8/darkness
execute if entity @s[tag=vs_cpus] positioned -1310 46 -287 run function medabots_server:stage/create/lagdou_ruins_8/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1288 51 -256 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1287 53 -281 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1287 52 -279 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/lagdou_ruins_9/darkness/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"9"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1289 53 -281 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1289 52 -279 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_9/darkness/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
