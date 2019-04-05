execute store result score @s BattlingMedabots if entity @e[scores={Stage=40,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1348 44 -241 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[0.0f,0.0f]}
execute as @e[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68,type=!minecraft:player] unless entity @s[scores={Stage=40}] run scoreboard players set @s Stage 40
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/lagdou_ruins_5/empty
stopsound @s[scores={BattlingMedabots=1,Death=0}] music
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Music 299
advancement grant @s[scores={Stage=40,BattlingMedabots=1,Death=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_5_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_5_second_go
advancement grant @s[scores={Stage=40,BattlingMedabots=1,Death=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_5_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_5_first_go
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Death=0}] -1346 50 -219 14
teleport @s[scores={BattlingMedabots=1,Death=0}] -1346 50 -219 -180 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","1"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","2"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","3"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","4"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","5"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","6"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","7"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","8"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","9"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","10"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","11"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","12"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","13"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","14"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","15"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","16"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","17"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","18"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","19"]}
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_marker","20"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=poison_marker,limit=3] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=1,tag=selected] run summon minecraft:potion -1351 48 -266 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=2,tag=selected] run summon minecraft:potion -1354 48 -269 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=3,tag=selected] run summon minecraft:potion -1324 48 -254 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=4,tag=selected] run summon minecraft:potion -1324 48 -248 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=5,tag=selected] run summon minecraft:potion -1324 48 -242 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=6,tag=selected] run summon minecraft:potion -1321 48 -230 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=7,tag=selected] run summon minecraft:potion -1333 48 -215 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=8,tag=selected] run summon minecraft:potion -1339 48 -215 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=9,tag=selected] run summon minecraft:potion -1354 48 -227 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=10,tag=selected] run summon minecraft:potion -1372 48 -242 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=11,tag=selected] run summon minecraft:potion -1372 48 -248 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=12,tag=selected] run summon minecraft:potion -1369 48 -254 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=13,tag=selected] run summon minecraft:potion -1354 48 -257 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=14,tag=selected] run summon minecraft:potion -1348 48 -251 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=15,tag=selected] run summon minecraft:potion -1348 48 -251 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=16,tag=selected] run summon minecraft:potion -1345 48 -263 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=17,tag=selected] run summon minecraft:potion -1339 48 -263 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=18,tag=selected] run summon minecraft:potion -1333 48 -263 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=19,tag=selected] run summon minecraft:potion -1351 48 -242 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
execute if entity @e[type=minecraft:area_effect_cloud,tag=poison_marker,tag=20,tag=selected] run summon minecraft:potion -1363 48 -239 {Potion:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"}},Silent:1b,CustomName:'{"translate":"medabots_server:entity.poison"}'}
kill @e[type=minecraft:area_effect_cloud,tag=poison_marker]
execute unless entity @e[x=-1376,y=39,z=-276,dx=58,dy=9,dz=68,tag=poison_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["poison_timer"],Duration:320}