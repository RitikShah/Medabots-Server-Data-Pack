execute if entity @a[x=-1760,y=0,z=-633,dx=92,dy=49,dz=92] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1760,y=0,z=-633,dx=92,dy=49,dz=92] run function medabots_server:stage/clean_up/laboratory_b