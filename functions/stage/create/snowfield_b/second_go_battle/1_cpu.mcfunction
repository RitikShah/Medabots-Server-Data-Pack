# Shoot-Spider
summon minecraft:skeleton -1754 45 -492 {CustomName:'{"translate":"medabots_server:entity.shoot_spider"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/snowfield_b/second_go/shoot_spider",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["shoot_spider","enemy_medabot","killerable","hostile","multi_legged_legs","press_left_arm","no_defend_right_arm","melee_trap_head","chameleon_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider,limit=1] {DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] Stage 14
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] Medabot 0
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] Killer 0
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] Charge 0
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] Battle 2
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] MaxHeadUses 12
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] MaxHeadArmor 70
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] MaxRightArmArmor 60
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] MaxLeftArmArmor 70
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] MaxLegsArmor 40
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] HeadPower 42
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] RightArmPower 16
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] LeftArmPower 24
scoreboard players set @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] LegsDefense 40
scoreboard players operation @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] MedabotNr 1
execute as @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1754,y=45,z=-492,distance=..1,tag=shoot_spider] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1754 45 -492 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:18,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.shoot_spider_multi_leg"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.shoot_spider"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.shoot_spider_multi_leg.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:shoot_spider_multi_leg",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:40,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1754 45 -492 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_veryweighter",gender:0b,move:"press",part:"left_arm",armor:70,power:24,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1754 45 -492 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:5,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kasou_touchu"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kasou_touchu_shitake",gender:0b,move:"no_defend",part:"right_arm",armor:60,power:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1754 45 -492 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:18,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.shoot_spider_spydertrap"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melee_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.melee_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"12"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.shoot_spider"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.shoot_spider_spydertrap.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:shoot_spider_spydertrap",gender:0b,move:"melee_trap",part:"head",armor:70,power:42,uses:12,activated:0b,version:1}}}]}
execute positioned -1754 45 -492 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=shoot_spider] MedabotNr