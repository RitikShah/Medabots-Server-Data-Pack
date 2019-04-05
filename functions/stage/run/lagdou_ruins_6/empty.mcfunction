execute store result score @s BattlingMedabots if entity @e[scores={Stage=41,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1230 43 -99 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[90.0f,0.0f]}
execute as @e[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77,type=!minecraft:player] unless entity @s[scores={Stage=41}] run scoreboard players set @s Stage 41
execute as @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/lagdou_ruins_6/empty
stopsound @s[scores={BattlingMedabots=1,Death=0}] music
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Music 299
advancement grant @s[scores={Stage=41,BattlingMedabots=1,Death=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_6_second_go
advancement grant @s[scores={Stage=41,BattlingMedabots=1,Death=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_6_first_go
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Death=0}] -1236 51 -99 14
teleport @s[scores={BattlingMedabots=1,Death=0}] -1236 51 -99 -180 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots