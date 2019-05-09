execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_out_a/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] run bossbar set medabots_server:ruins_out_a/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:ruins_out_a/time value
execute unless entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] store result bossbar medabots_server:ruins_out_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:ruins_out_a/robattle value
execute if entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] store result bossbar medabots_server:ruins_out_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,tag=mission] at @s run function medabots_server:stage/mission_time_up
scoreboard players reset #temp Time
execute if block -1554 44 -284 minecraft:lime_wool run tag @e[x=-1512.5,y=45,z=-295.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1581 44 -284 minecraft:lime_wool run tag @e[x=-1513.5,y=45,z=-295.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1511 44 -296 minecraft:lime_wool run tag @e[x=-1567.5,y=45,z=-309.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1567 44 -266 minecraft:lime_wool run tag @e[x=-1567.5,y=45,z=-263.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1554 44 -258 minecraft:light_blue_wool run tag @e[x=-1553.5,y=45,z=-256.5,distance=..0.7,tag=hammer_punch] add enabled
execute if block -1554 44 -258 minecraft:blue_wool run tag @e[x=-1553.5,y=45,z=-256.5,distance=..0.7,tag=hammer_punch] remove enabled
execute if block -1552 44 -260 minecraft:light_blue_wool run tag @e[x=-1551.5,y=45,z=-258.5,distance=..0.7,tag=hammer_punch] add enabled
execute if block -1552 44 -260 minecraft:blue_wool run tag @e[x=-1551.5,y=45,z=-258.5,distance=..0.7,tag=hammer_punch] remove enabled
execute if block -1511 44 -295 minecraft:light_blue_wool run tag @e[x=-1507.5,y=45,z=-291.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1511 44 -295 minecraft:blue_wool run tag @e[x=-1507.5,y=45,z=-291.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1511 44 -295 minecraft:light_blue_wool run tag @e[x=-1507.5,y=45,z=-299.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1511 44 -295 minecraft:blue_wool run tag @e[x=-1507.5,y=45,z=-299.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1511 44 -295 minecraft:light_blue_wool run tag @e[x=-1514.5,y=45,z=-293.5,distance=..0.7,tag=alarm] add enabled
execute if block -1511 44 -295 minecraft:blue_wool run tag @e[x=-1514.5,y=45,z=-293.5,distance=..0.7,tag=alarm] remove enabled
execute if block -1511 44 -295 minecraft:light_blue_wool run tag @e[x=-1514.5,y=45,z=-296.5,distance=..0.7,tag=alarm] add enabled
execute if block -1511 44 -295 minecraft:blue_wool run tag @e[x=-1514.5,y=45,z=-296.5,distance=..0.7,tag=alarm] remove enabled
execute if block -1578 44 -301 minecraft:yellow_wool run scoreboard players remove @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1578 44 -301 minecraft:yellow_wool run tag @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1578 44 -301 minecraft:yellow_wool run scoreboard players add @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1578 44 -301 minecraft:yellow_wool run tag @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1578 44 -301 minecraft:orange_wool run scoreboard players add @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1578 44 -301 minecraft:orange_wool run tag @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1578 44 -301 minecraft:orange_wool run scoreboard players remove @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1578 44 -301 minecraft:orange_wool run tag @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1595 44 -264 minecraft:lime_wool run tag @e[x=-1599.5,y=45,z=-263.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1624 46 -284 minecraft:iron_door[open=false] if block -1602 44 -286 minecraft:lime_wool run tag @e[x=-1601.5,y=45,z=-301.5,distance=..0.7,tag=press_wall] add enabled
execute if block -1624 46 -284 minecraft:iron_door[open=true] run tag @e[x=-1601.5,y=45,z=-301.5,distance=..0.7,tag=press_wall] remove enabled
execute if block -1624 46 -284 minecraft:iron_door[open=false] if block -1602 44 -286 minecraft:lime_wool run tag @e[x=-1596.5,y=45,z=-284.5,distance=..0.7,tag=press_wall] add enabled
execute if block -1624 46 -284 minecraft:iron_door[open=true] run tag @e[x=-1596.5,y=45,z=-284.5,distance=..0.7,tag=press_wall] remove enabled
execute if block -1609 44 -283 minecraft:orange_wool run tag @e[x=-1620.5,y=45,z=-253.5,distance=..0.7,tag=press_wall] add enabled
execute if block -1609 44 -283 minecraft:yellow_wool run tag @e[x=-1620.5,y=45,z=-253.5,distance=..0.7,tag=press_wall] remove enabled
execute if block -1610 46 -308 minecraft:iron_door[open=true] if block -1624 46 -284 minecraft:iron_door[open=false] if entity @s[x=-1612,y=45,z=-308,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_a/second_go_battle/0
execute if entity @e[x=-1608.5,y=45,z=-299.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=7,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1609.5,y=45,z=-307.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1623.5,y=45,z=-283.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:ruins_out_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=7}] run scoreboard players set @s Stage 7
execute if entity @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/ruins_out_a/second_go
stopsound @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] music
playsound medabots_server:music.stage.stage_end music @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] -1570 51 -284 14
scoreboard players set @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] Battle 0
scoreboard players set @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] MusicType 1
scoreboard players set @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] Music 299
advancement grant @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] only medabots_server:stages/wave_1/ruins_out_a_second_go
teleport @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] -1570 51 -284 -180 0