execute unless entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:item -1859 44 -571 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
summon minecraft:area_effect_cloud -1861 44 -573 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1861 44 -570 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1865 44 -577 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1868 44 -577 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1872 44 -573 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1872 44 -570 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1868 44 -566 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1865 44 -566 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:armor_stand -1861 44 -576 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1862 44 -577 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1871 44 -566 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1872 44 -567 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1871 44 -577 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1872 44 -576 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1861 44 -567 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1862 44 -566 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
setblock -1861 44 -576 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1862 44 -577 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1871 44 -566 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1872 44 -567 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1871 44 -577 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1872 44 -576 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1861 44 -567 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1862 44 -566 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1861 45 -576 minecraft:redstone_block
setblock -1862 45 -577 minecraft:redstone_block
setblock -1871 45 -566 minecraft:redstone_block
setblock -1872 45 -567 minecraft:redstone_block
setblock -1871 45 -577 minecraft:redstone_block
setblock -1872 45 -576 minecraft:redstone_block
setblock -1861 45 -567 minecraft:redstone_block
setblock -1862 45 -566 minecraft:redstone_block
execute if entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run setblock -1876 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run effect give @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run effect give @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run summon minecraft:area_effect_cloud -1863 44 -572 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
execute if entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run teleport @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] -1862 44 -571
execute if entity @e[x=-1862,y=44,z=-571,distance=..10,tag=enemy_medabot] run teleport @s -1865 44 -572
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=79}]