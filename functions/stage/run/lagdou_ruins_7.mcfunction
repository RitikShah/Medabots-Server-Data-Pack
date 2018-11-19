execute store result score @s BattlingMedabots if entity @e[scores={Stage=93,Medabot=0..}]
execute if entity @e[x=-1311,y=39,z=-220,dx=74,dy=9,dz=77,tag=mr_referee,type=minecraft:armor_stand] run data merge block -1279 52 -178 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.pvp_stage.full\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
execute if entity @e[x=-1311,y=39,z=-220,dx=74,dy=9,dz=77,tag=mr_referee,type=minecraft:armor_stand] run setblock -1279 53 -180 minecraft:red_wool
execute if entity @s[scores={BattlingMedabots=3..}] unless entity @e[x=-1311,y=39,z=-220,dx=74,dy=9,dz=77,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1280 44 -162 {Invisible:1b,Marker:1b,Small:1b,CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}
stopsound @s[scores={BattlingMedabots=1}] music medabots_server:music.stage.pvp.lagdou_ruins2
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
scoreboard players add @s[scores={BattlingMedabots=1,Death=0,LagdouKill=12..13}] LagdouKill 1
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1279 51 -171 3
teleport @s[scores={BattlingMedabots=1}] -1279 51 -171 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1280 51 -179 minecraft:stone_pressure_plate
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1278 51 -179 minecraft:stone_pressure_plate
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1280 53 -180 minecraft:redstone_block
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1278 53 -180 minecraft:redstone_block
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1279 53 -180 minecraft:red_wool
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[scores={Stage=93},type=!minecraft:player] add dead
execute if entity @s[scores={BattlingMedabots=1}] run data merge block -1279 52 -178 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.pvp_stage.no_pvp\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1311,y=39,z=-220,dx=74,dy=9,dz=77,type=!minecraft:player] unless entity @s[scores={Stage=93}] run scoreboard players set @s Stage 93