execute if entity @a[x=-1824,y=0,z=-438,dx=60,dy=49,dz=90] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1824,y=0,z=-438,dx=60,dy=49,dz=90] run function medabots_server:stage/clean_up/iceberg_b