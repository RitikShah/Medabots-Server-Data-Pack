tag @s add -1
tag @s add second_go
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/jungle_b/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1620 51 -431 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1619 53 -479 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1672 53 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/jungle_b/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"B"}]},{"text":"3"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1621 53 -479 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1621 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/jungle_b/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
