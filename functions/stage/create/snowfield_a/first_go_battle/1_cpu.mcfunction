# Hellphoenix
summon minecraft:skeleton -1660 45 -233 {CustomName:'{"translate":"medabots_server:entity.hellphoenix"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/snowfield_a/first_go/hellphoenix",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["hellphoenix","enemy_medabot","killerable","hostile","fly_legs","napalm_left_arm","hold_right_arm","melt_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix,limit=1] {DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] Stage 5
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] Medabot 0
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] Charge 0
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] Battle 2
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] MaxHeadUses 7
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] MaxHeadArmor 65
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] MaxRightArmArmor 40
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] MaxLeftArmArmor 50
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] MaxLegsArmor 35
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] HeadPower 23
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] RightArmPower 15
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] LeftArmPower 24
scoreboard players set @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] LegsDefense 36
scoreboard players operation @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] MedabotNr 1
execute as @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1660,y=45,z=-233,distance=..1,tag=hellphoenix] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1660 45 -233 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_red_tail"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_red_tail.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_red_tail.model"}']},medabots_server:{id:"medabots_server:hellphoenix_red_tail",gender:0b,move:"fly",part:"legs",armor:35,defense:36,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1660 45 -233 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burncapsule"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burncapsule.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burncapsule.model"}']},medabots_server:{id:"medabots_server:fly_falcon_burncapsule",gender:0b,move:"napalm",part:"left_arm",armor:50,power:24,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1660 45 -233 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:21,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_catch"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hold"}','{"italic":false,"color":"white","translate":"medabots_server:move.hold.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_catch.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_catch.model"}']},medabots_server:{id:"medabots_server:kanehachi_mk2_catch",gender:0b,move:"hold",part:"right_arm",armor:40,power:15,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1660 45 -233 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_blast_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_blast_gun.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_blast_gun.model"}']},medabots_server:{id:"medabots_server:hellphoenix_blast_gun",gender:0b,move:"melt",part:"head",armor:65,power:23,uses:7,activated:0b,version:1}}}]}
execute positioned -1660 45 -233 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=hellphoenix] MedabotNr