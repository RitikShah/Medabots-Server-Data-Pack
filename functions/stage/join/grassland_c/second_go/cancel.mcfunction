execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"C"}]}]}
execute if entity @s[tag=-1] run data merge block -1538 51 -480 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1538 52 -482 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1532 29 -447
execute if entity @s[tag=-1] run data merge block -1540 51 -480 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/grassland_c/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1540 52 -482 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=0] remove 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"C"}]},{"text":"2"}]}
execute if entity @s[tag=0] run data merge block -1538 51 -480 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/grassland_c/second_go/0"}}'}
execute if entity @s[tag=0] run tag @s remove 0