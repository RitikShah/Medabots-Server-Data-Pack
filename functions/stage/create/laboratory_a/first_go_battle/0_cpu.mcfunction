# Dragonbeetle
summon minecraft:skeleton -1752 44 -271 {CustomName:'{"translate":"medabots_server:entity.dragonbeetle"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/laboratory_a/first_go/dragonbeetle",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["dragonbeetle","enemy_medabot","killerable","hostile","fly_legs","sword_left_arm","guard_optical_right_arm","press_head","kabuto_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle,limit=1] {DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] Stage 9
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] Medabot 0
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] Killer 0
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] Charge 0
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] Battle 2
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] MaxHeadUses 15
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] MaxHeadArmor 105
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] MaxRightArmArmor 50
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] MaxLeftArmArmor 40
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] MaxLegsArmor 40
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] HeadPower 25
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] RightArmPower 0
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] LeftArmPower 28
scoreboard players set @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] LegsDefense 28
scoreboard players operation @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] MedabotNr 1
execute as @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1752,y=44,z=-271,distance=..1,tag=dragonbeetle] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1752 44 -271 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly.model"}']},medabots_server:{id:"medabots_server:dragonbeetle_flyfly",gender:0b,move:"fly",part:"legs",armor:40,defense:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1752 44 -271 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_sword"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_sword.model"}']},medabots_server:{id:"medabots_server:nin_ninja_ninja_sword",gender:0b,move:"sword",part:"left_arm",armor:40,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1752 44 -271 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:30,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtack"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.guard_optical"}','{"italic":false,"color":"white","translate":"medabots_server:move.guard_optical.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtack.model"}']},medabots_server:{id:"medabots_server:dondoguu_dohtack",gender:0b,move:"guard_optical",part:"right_arm",armor:55,power:0,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1752 44 -271 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"105"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter.model"}']},medabots_server:{id:"medabots_server:dragonbeetle_hardweighter",gender:0b,move:"press",part:"head",armor:105,power:25,uses:15,activated:0b,version:1}}}]}
execute positioned -1752 44 -271 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=dragonbeetle] MedabotNr