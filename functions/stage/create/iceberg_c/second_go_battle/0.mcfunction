execute unless entity @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=0] positioned -1553 44 -617 run function medabots_server:spawn_entities/enemy_medabot/frappe/pastel_fairy/pure_mermaid/frappe/kuwagata
execute unless entity @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=0] positioned -1553 44 -617 run scoreboard players set @e[distance=..1] Stage 26
execute positioned -1552 44 -622 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1551 44 -619 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1551 44 -617 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1553 44 -614 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1555 44 -614 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1556 44 -615 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1556 44 -617 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1557 44 -618 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1557 44 -620 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1555 44 -622 run function medabots_server:set_blocks/hole/delay_5
tag @e[x=-1552.5,y=44,z=-624.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1553 44 -621
effect give @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=0] Battle 2
teleport @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=0] -1553 44 -617
summon minecraft:area_effect_cloud -1553 44 -619 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:seashore_c/robattle value 3600
bossbar set medabots_server:seashore_c/robattle players @a[scores={Stage=26}]
bossbar set medabots_server:seashore_c/time players