execute positioned -1535 45 -176 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1539 45 -176 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1520 45 -175 run function medabots_server:spawn_entities/item/1_medallar_cent
execute positioned -1539 45 -172 run function medabots_server:spawn_entities/round_stone
execute positioned -1543 45 -171 run function medabots_server:spawn_entities/ice_block
execute positioned -1539 45 -169 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1520 45 -155 run function medabots_server:spawn_entities/raft
execute positioned -1529 45 -154 run function medabots_server:spawn_entities/raft
execute positioned -1539 45 -154 run function medabots_server:spawn_entities/raft
execute positioned -1514 45 -159 run function medabots_server:set_blocks/laser_trap/enabled/west/delay_10
execute positioned -1532 45 -159 run function medabots_server:set_blocks/mirror/45
execute positioned -1534 45 -170 run function medabots_server:spawn_entities/bomb/delay_5
execute positioned -1533 45 -170 run function medabots_server:spawn_entities/bomb/delay_5
execute positioned -1524 45 -177 run function medabots_server:spawn_entities/rubberobo/south
execute positioned -1513 45 -170 run function medabots_server:spawn_entities/rubberobo/south
execute positioned -1515 45 -168 run function medabots_server:set_blocks/pot
execute positioned -1523 45 -172 run function medabots_server:set_blocks/stone
execute positioned -1523 45 -171 run function medabots_server:set_blocks/stone
execute positioned -1531 45 -159 run function medabots_server:set_blocks/glass
execute positioned -1562 45 -139 run function medabots_server:set_blocks/door/open/south
execute positioned -1563 45 -142 run function medabots_server:set_blocks/door/open/west
execute positioned -1560 45 -143 run function medabots_server:set_blocks/door/open/north
execute positioned -1559 45 -140 run function medabots_server:set_blocks/door/open/east
execute positioned -1516 45 -174 run function medabots_server:set_blocks/goal_area
execute positioned -1519 45 -171 run function medabots_server:set_blocks/starting_area
tag @s add object_test
teleport @s -1519 45 -171
bossbar set medabots_server:grassland_a/time value 0
bossbar set medabots_server:grassland_a/time players @s
scoreboard players set @a[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63] Battle 1
scoreboard players set @a[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63] Stage 1
scoreboard players set @a[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63] Music 0
scoreboard players set @a[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63] MusicType 7