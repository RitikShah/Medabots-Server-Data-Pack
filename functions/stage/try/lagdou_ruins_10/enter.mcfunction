execute if entity @a[x=-1389,y=0,z=-114,dx=56,dy=50,dz=98] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1389,y=0,z=-114,dx=56,dy=50,dz=98] run function medabots_server:stage/clean_up/lagdou_ruins_10