tag @s add -1
tag @s add second_go
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_out_c/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1635 50 -672 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1634 52 -705 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1634 51 -703 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/ruins_out_c/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"C"}]},{"text":"2"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1636 52 -705 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1636 51 -703 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_out_c/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
