execute if entity @a[x=-1570,y=0,z=-608,dx=60,dy=49,dz=60] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1570,y=0,z=-608,dx=60,dy=49,dz=60] run function medabots_server:stage/clean_up/seashore_c