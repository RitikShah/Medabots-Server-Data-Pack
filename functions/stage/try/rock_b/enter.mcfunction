execute if entity @a[x=-1636,y=0,z=-382,dx=63,dy=49,dz=63] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1636,y=0,z=-382,dx=63,dy=49,dz=63] run function medabots_server:stage/clean_up/rock_b