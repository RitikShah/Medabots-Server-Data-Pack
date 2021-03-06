execute unless entity @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=23},tag=enemy_medabot] run bossbar set medabots_server:grassland_c/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=23},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:grassland_c/time value
execute unless entity @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=23},tag=enemy_medabot] store result bossbar medabots_server:grassland_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=23},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:grassland_c/robattle value
execute if entity @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=23},tag=enemy_medabot] store result bossbar medabots_server:grassland_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=23},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=23},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/grassland_c/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1537.5,y=44,z=-428.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1524.5,y=44,z=-432.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1541.5,y=44,z=-434.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1549.5,y=44,z=-424.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1555.5,y=44,z=-429.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1561.5,y=44,z=-438.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1558.5,y=44,z=-461.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1558.5,y=44,z=-457.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1540.5,y=44,z=-448.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1522.5,y=44,z=-448.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1527.5,y=44,z=-453.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:yellow_wool run tag @e[x=-1518.5,y=44,z=-469.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1537.5,y=44,z=-428.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1524.5,y=44,z=-432.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1541.5,y=44,z=-434.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1549.5,y=44,z=-424.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1555.5,y=44,z=-429.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1561.5,y=44,z=-438.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1558.5,y=44,z=-461.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1558.5,y=44,z=-457.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1540.5,y=44,z=-448.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1522.5,y=44,z=-448.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1527.5,y=44,z=-453.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1521 43 -425 minecraft:orange_wool run tag @e[x=-1518.5,y=44,z=-469.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1514 43 -454 minecraft:lime_wool run tag @e[x=-1537.5,y=44,z=-453.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1518 43 -473 minecraft:lime_wool run tag @e[x=-1531.5,y=44,z=-452.5,distance=..0.7,tag=alarm,tag=!enabled] add enabled
execute if block -1557 44 -463 minecraft:iron_door[open=true] if block -1559 44 -474 minecraft:air if entity @s[x=-1558,y=44,z=-466,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_c/second_go_battle/0
execute if entity @e[x=-1555.5,y=44,z=-472.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=23,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1555.5,y=44,z=-472.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[scores={Stage=23},tag=cannon,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run tag @e[x=-1556.5,y=44,z=-462.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run kill @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,tag=mission]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=23,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=23,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:grassland_c/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1538 44 -458 minecraft:iron_door[open=true] if entity @s[x=-1539,y=44,z=-461,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_c/second_go_battle/1
execute if entity @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=23,Medabot=0..,Battle=1..2}]
execute as @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=23}] run scoreboard players set @s Stage 23
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/grassland_c/second_go
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..}] -1539 50 -449 14
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] MusicType 22
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/grassland_c_second_go
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1539 50 -449 -180 0
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:grassland_c/robattle players
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots