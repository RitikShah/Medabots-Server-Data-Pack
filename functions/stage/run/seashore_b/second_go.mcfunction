execute unless entity @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,scores={Medabot=0..,Battle=1..2,Stage=13},tag=enemy_medabot] run bossbar set medabots_server:seashore_b/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,scores={Medabot=0..,Battle=1..2,Stage=13},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:seashore_b/time value
execute unless entity @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,scores={Medabot=0..,Battle=1..2,Stage=13},tag=enemy_medabot] store result bossbar medabots_server:seashore_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,scores={Medabot=0..,Battle=1..2,Stage=13},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:seashore_b/robattle value
execute if entity @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,scores={Medabot=0..,Battle=1..2,Stage=13},tag=enemy_medabot] store result bossbar medabots_server:seashore_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,scores={Medabot=0..,Battle=1..2,Stage=13},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/seashore_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1760 44 -387 minecraft:lime_wool run tag @e[x=-1686.5,y=45,z=-358.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1684 44 -354 minecraft:lime_wool if block -1674 44 -374 minecraft:lime_wool if block -1702 44 -366 minecraft:lime_wool run tag @e[x=-1672.5,y=45,z=-387.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1672 44 -438 minecraft:lime_wool run tag @e[x=-1694.5,y=45,z=-410.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1711 44 -417 minecraft:blue_wool run tag @e[x=-1693.5,y=45,z=-433.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1712 44 -418 minecraft:light_blue_wool run tag @e[x=-1693.5,y=45,z=-433.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1712 44 -418 minecraft:blue_wool if block -1711 44 -417 minecraft:light_blue_wool run tag @e[x=-1693.5,y=45,z=-433.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1743 44 -354 minecraft:orange_wool run scoreboard players remove @e[x=-1742.5,y=45,z=-354.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1743 44 -354 minecraft:orange_wool run tag @e[x=-1742.5,y=45,z=-354.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1743 44 -354 minecraft:yellow_wool run scoreboard players add @e[x=-1742.5,y=45,z=-354.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1743 44 -354 minecraft:yellow_wool run tag @e[x=-1742.5,y=45,z=-354.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1697 44 -411 minecraft:orange_wool if block -1744 44 -411 minecraft:orange_wool run scoreboard players remove @e[x=-1695.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1697 44 -411 minecraft:orange_wool if block -1744 44 -411 minecraft:orange_wool run tag @e[x=-1695.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1697 44 -411 minecraft:orange_wool if block -1744 44 -411 minecraft:orange_wool run scoreboard players add @e[x=-1744.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1697 44 -411 minecraft:orange_wool if block -1744 44 -411 minecraft:orange_wool run tag @e[x=-1744.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1697 44 -411 minecraft:yellow_wool run scoreboard players add @e[x=-1695.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1697 44 -411 minecraft:yellow_wool run tag @e[x=-1695.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1697 44 -411 minecraft:yellow_wool run scoreboard players remove @e[x=-1744.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1697 44 -411 minecraft:yellow_wool run tag @e[x=-1744.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1744 44 -411 minecraft:yellow_wool run scoreboard players add @e[x=-1695.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1744 44 -411 minecraft:yellow_wool run tag @e[x=-1695.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1744 44 -411 minecraft:yellow_wool run scoreboard players remove @e[x=-1744.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1744 44 -411 minecraft:yellow_wool run tag @e[x=-1744.5,y=45,z=-410.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1674 44 -417 minecraft:blue_wool run scoreboard players remove @e[x=-1673.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1674 44 -417 minecraft:blue_wool run tag @e[x=-1673.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1674 44 -417 minecraft:light_blue_wool run scoreboard players add @e[x=-1673.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1674 44 -417 minecraft:light_blue_wool run tag @e[x=-1673.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1675 44 -417 minecraft:blue_wool run scoreboard players remove @e[x=-1674.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1675 44 -417 minecraft:blue_wool run tag @e[x=-1674.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1675 44 -417 minecraft:light_blue_wool run scoreboard players add @e[x=-1674.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1675 44 -417 minecraft:light_blue_wool run tag @e[x=-1674.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1676 44 -417 minecraft:blue_wool run scoreboard players remove @e[x=-1675.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1676 44 -417 minecraft:blue_wool run tag @e[x=-1675.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1676 44 -417 minecraft:light_blue_wool run scoreboard players add @e[x=-1675.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1676 44 -417 minecraft:light_blue_wool run tag @e[x=-1675.5,y=45,z=-417.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1679 44 -411 minecraft:blue_wool run tag @e[x=-1690,y=44,z=-412,dx=10,dy=3,dz=2,tag=alarm,tag=enabled] remove enabled
execute if block -1679 44 -411 minecraft:light_blue_wool if block -1679 44 -412 minecraft:blue_wool run tag @e[x=-1690,y=44,z=-412,dx=10,dy=3,dz=2,tag=alarm,tag=!enabled] add enabled
execute if block -1747 45 -354 minecraft:iron_door[open=true] if block -1760 44 -368 minecraft:water if entity @s[x=-1750,y=44,z=-356,dx=3,dy=3,dz=3] run function medabots_server:stage/create/seashore_b/second_go_battle/0
execute if entity @e[x=-1754.5,y=44,z=-360.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=13,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1754.5,y=44,z=-360.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[scores={Stage=13},tag=cannon,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run tag @e[x=-1746.5,y=45,z=-353.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run kill @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,tag=mission]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=13,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=13,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:seashore_b/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1747 45 -413 minecraft:iron_door[open=true] if entity @s[x=-1748,y=45,z=-416,dx=3,dy=3,dz=3] run function medabots_server:stage/create/seashore_b/second_go_battle/1
execute if entity @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=13,Medabot=0..,Battle=1..2}]
execute as @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=13}] run scoreboard players set @s Stage 13
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/seashore_b/second_go
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..}] -1715 51 -396 14
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/seashore_b_second_go
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1715 51 -396 -180 0
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:seashore_b/robattle players
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots