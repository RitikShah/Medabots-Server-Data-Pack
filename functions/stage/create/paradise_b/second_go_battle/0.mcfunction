execute unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=0] positioned -1608 45 -591 run function medabots_server:spawn_entities/enemy_medabot/kasou_touchu/basstroyer/kasou_touchu/kasou_touchu/alien
execute unless entity @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=0] positioned -1608 45 -591 run scoreboard players set @e[distance=..1] Stage 22
execute positioned -1615 45 -592 run function medabots_server:set_blocks/accelerator/south
execute positioned -1613 45 -592 run function medabots_server:set_blocks/accelerator/south
execute positioned -1611 45 -592 run function medabots_server:set_blocks/accelerator/south
execute positioned -1611 45 -594 run function medabots_server:set_blocks/accelerator/south
execute positioned -1609 45 -590 run function medabots_server:set_blocks/accelerator/south
execute positioned -1609 45 -592 run function medabots_server:set_blocks/accelerator/south
execute positioned -1609 45 -594 run function medabots_server:set_blocks/accelerator/south
execute positioned -1609 45 -596 run function medabots_server:set_blocks/accelerator/south
execute positioned -1607 45 -588 run function medabots_server:set_blocks/accelerator/south
execute positioned -1607 45 -590 run function medabots_server:set_blocks/accelerator/south
execute positioned -1607 45 -592 run function medabots_server:set_blocks/accelerator/south
execute positioned -1607 45 -594 run function medabots_server:set_blocks/accelerator/south
execute positioned -1605 45 -588 run function medabots_server:set_blocks/accelerator/south
execute positioned -1605 45 -590 run function medabots_server:set_blocks/accelerator/south
tag @e[x=-1617.5,y=45,z=-587.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1612 45 -591
effect give @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1665,y=51,z=-637,dx=64,dy=4,dz=63,tag=0] -1608 45 -591
summon minecraft:area_effect_cloud -1610 45 -590 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","run_until_the_time_is_up"],Duration:2147483647}
bossbar set medabots_server:paradise_b/robattle value 3600
bossbar set medabots_server:paradise_b/robattle players @a[scores={Stage=22}]
bossbar set medabots_server:paradise_b/time players