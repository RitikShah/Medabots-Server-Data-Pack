execute if entity @a[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94] run function medabots_server:stage/clean_up/paradise_a