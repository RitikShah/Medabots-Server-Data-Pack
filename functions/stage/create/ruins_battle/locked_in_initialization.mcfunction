tag @s add -1
tag @s add locked_in
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_battle/locked_in
execute if entity @s[tag=vs_cpus] positioned -1997 45 -564 run function medabots_server:stage/create/ruins_battle/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1997 51 -560 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1996 53 -583 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1996 52 -581 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/ruins_battle/locked_in/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.ruins_battle"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1998 53 -583 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1998 52 -581 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_battle/locked_in/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
