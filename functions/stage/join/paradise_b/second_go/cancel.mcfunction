execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"B"}]}]}
execute if entity @s[tag=-1] run data merge block -1633 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1633 53 -639 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1631 37 -607
execute if entity @s[tag=-1] run data merge block -1635 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/paradise_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1635 53 -639 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=0] remove 0
execute if entity @s[tag=-1] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=1] remove 1
execute if entity @s[tag=-1] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] remove 2
execute if entity @s[tag=-1] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] remove 3
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=1] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=0] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=1] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run data merge block -1633 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_b/second_go/3"}}'}
execute if entity @s[tag=0] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=1] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"B"}]},{"text":"3"}]}
execute if entity @s[tag=0] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=1] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run data merge block -1633 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_b/second_go/2"}}'}
execute if entity @s[tag=0] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=1] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"B"}]},{"text":"4"}]}
execute if entity @s[tag=0] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=1] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] run data merge block -1633 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_b/second_go/1"}}'}
execute if entity @s[tag=0] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"B"}]},{"text":"5"}]}
execute if entity @s[tag=0] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=1] run data merge block -1633 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_b/second_go/0"}}'}
execute if entity @s[tag=0] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=1] add 0
execute if entity @s[tag=0] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=1] remove 1
execute if entity @s[tag=0] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] add 1
execute if entity @s[tag=0] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] remove 2
execute if entity @s[tag=0] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] add 2
execute if entity @s[tag=0] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] remove 3
execute if entity @s[tag=0] run tag @s remove 0

execute if entity @s[tag=1] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=1] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run data merge block -1633 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_b/second_go/3"}}'}
execute if entity @s[tag=1] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"B"}]},{"text":"3"}]}
execute if entity @s[tag=1] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run data merge block -1633 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_b/second_go/2"}}'}
execute if entity @s[tag=1] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"B"}]},{"text":"4"}]}
execute if entity @s[tag=1] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] run data merge block -1633 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_b/second_go/1"}}'}
execute if entity @s[tag=1] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] add 1
execute if entity @s[tag=1] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=2] remove 2
execute if entity @s[tag=1] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] add 2
execute if entity @s[tag=1] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] remove 3
execute if entity @s[tag=1] run tag @s remove 1

execute if entity @s[tag=2] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=2] if entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run data merge block -1633 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_b/second_go/3"}}'}
execute if entity @s[tag=2] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"B"}]},{"text":"3"}]}
execute if entity @s[tag=2] unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] run data merge block -1633 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_b/second_go/2"}}'}
execute if entity @s[tag=2] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] add 2
execute if entity @s[tag=2] run tag @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=3] remove 3
execute if entity @s[tag=2] run tag @s remove 2

execute if entity @s[tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=3] run data merge block -1633 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_b/second_go/3"}}'}
execute if entity @s[tag=3] run tag @s remove 3