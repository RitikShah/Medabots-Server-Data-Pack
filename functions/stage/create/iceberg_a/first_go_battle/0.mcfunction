execute unless entity @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:creeper -1686 44 -207 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1681 44 -207 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:zombie -1689 44 -216 {NoAI:1b,Silent:1b,CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],Tags:["delay_4","no_detect","hostile","killerable","rotate_over_z_positive","cannon"],Rotation:[170.0f,0.0f],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,Team:"StageEnemy",AbsorptionAmount:20.0f,Health:100.0f}
summon minecraft:zombie -1684 44 -218 {NoAI:1b,Silent:1b,CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],Tags:["delay_4","no_detect","hostile","killerable","rotate_over_z_positive","cannon"],Rotation:[170.0f,0.0f],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,Team:"StageEnemy",AbsorptionAmount:20.0f,Health:100.0f}
setblock -1707 44 -203 minecraft:chest[facing=south,type=single]
setblock -1703 44 -203 minecraft:chest[facing=south,type=single]{Items:[{Slot:0b,id:"minecraft:lapis_lazuli",Count:6b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}}]}
execute if entity @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] run setblock -1710 44 -209 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] run effect give @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] run effect give @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] run summon minecraft:armor_stand -1705 44 -209 {CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Rotation:[0.0f,0.0f],Invisible:1b}
execute if entity @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] run teleport @e[x=-1702,y=44,z=-207,distance=..10,tag=enemy_medabot] -1702 44 -207
execute if entity @e[x=-1734,y=44,z=-224,distance=..10,tag=enemy_medabot] run teleport @s -1707 44 -208
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run teleport @s -1874 44 -554
bossbar set medabots_server:iceberg_a/time value 3600
bossbar set medabots_server:iceberg_a/time players @a[scores={Stage=17}]