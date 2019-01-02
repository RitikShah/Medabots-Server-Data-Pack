execute unless entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:creeper -1727 44 -343 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1721 44 -341 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1712 44 -341 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1706 44 -343 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1727 44 -322 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1721 44 -324 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1712 44 -324 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1706 44 -322 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:area_effect_cloud -1722 44 -330 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10"],Duration:2147483647}
summon minecraft:area_effect_cloud -1722 44 -335 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10"],Duration:2147483647}
summon minecraft:area_effect_cloud -1711 44 -330 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10"],Duration:2147483647}
summon minecraft:area_effect_cloud -1711 44 -335 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10"],Duration:2147483647}
summon minecraft:area_effect_cloud -1722 44 -331 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -1722 44 -334 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -1711 44 -331 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -1711 44 -334 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
setblock -1722 44 -330 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1722 44 -335 minecraft:structure_block[mode=load]{name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1711 44 -330 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1711 44 -335 minecraft:structure_block[mode=load]{name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1722 45 -330 minecraft:redstone_block
setblock -1722 45 -335 minecraft:redstone_block
setblock -1711 45 -330 minecraft:redstone_block
setblock -1711 45 -335 minecraft:redstone_block
execute if entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run setblock -1717 44 -320 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run effect give @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run effect give @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run summon minecraft:area_effect_cloud -1717 44 -333 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
execute if entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run teleport @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] -1716 44 -334
execute if entity @e[x=-1716,y=44,z=-334,distance=..10,tag=enemy_medabot] run teleport @s -1717 44 -331
bossbar set medabots_server:ruins_in_a/time value 3600
bossbar set medabots_server:ruins_in_a/time players @a[scores={Stage=24}]