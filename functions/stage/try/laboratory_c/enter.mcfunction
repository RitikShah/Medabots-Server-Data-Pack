execute if entity @a[x=-1596,y=0,z=-618,dx=22,dy=49,dz=44] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1596,y=0,z=-618,dx=22,dy=49,dz=44] run function medabots_server:stage/clean_up/laboratory_c