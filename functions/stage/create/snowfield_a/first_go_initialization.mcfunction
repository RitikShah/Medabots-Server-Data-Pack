tag @s add -1
tag @s add first_go
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/snowfield_a/first_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1620 51 -216 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1619 53 -249 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1619 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/snowfield_a/first_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.snowfield","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1621 53 -249 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1621 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/snowfield_a/first_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
