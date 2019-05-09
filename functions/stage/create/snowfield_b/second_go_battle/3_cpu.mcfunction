# Maxsnake
summon minecraft:skeleton -1681 45 -529 {CustomName:'{"translate":"medabots_server:entity.maxsnake"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/snowfield_b/second_go/maxsnake",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["maxsnake","enemy_medabot","killerable","hostile","multi_legged_legs","confuse_left_arm","press_right_arm","infect_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake,limit=1] {DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] Stage 14
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] Medabot 0
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] Killer 0
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] Charge 0
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] Battle 2
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] MaxHeadUses 6
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] MaxHeadArmor 70
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] MaxRightArmArmor 70
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] MaxLeftArmArmor 50
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] MaxLegsArmor 40
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] HeadPower 56
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] RightArmPower 18
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] LeftArmPower 16
scoreboard players set @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] LegsDefense 16
scoreboard players operation @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] MedabotNr 1
execute as @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1681,y=45,z=-529,distance=..1,tag=maxsnake] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1681 45 -529 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_musk"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_musk.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_musk.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:maxsnake_musk",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1681 45 -529 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.confuse"}','{"italic":false,"color":"white","translate":"medabots_server:move.confuse.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.grade_kabuki"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:grade_kabuki_acting",gender:0b,move:"confuse",part:"left_arm",armor:50,power:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1681 45 -529 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_heavyweighter",gender:0b,move:"press",part:"right_arm",armor:70,power:18,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1681 45 -529 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_hacker"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.infect"}','{"italic":false,"color":"white","translate":"medabots_server:move.infect.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_hacker.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_hacker.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:maxsnake_hacker",gender:0b,move:"infect",part:"head",armor:70,power:56,uses:6,activated:0b,version:1}}}]}
execute positioned -1681 45 -529 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=maxsnake] MedabotNr