tag @s add -1
tag @s add second_go
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/seashore_c/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1540 50 -578 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1540 52 -610 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1540 51 -608 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/seashore_c/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.seashore","with":[{"text":"C"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1542 52 -610 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1542 51 -608 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/seashore_c/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
