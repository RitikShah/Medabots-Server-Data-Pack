# Poison Scorpi
summon minecraft:skeleton ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.poison_scorpi"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/enemy_medabot/poison_scorpi/knight_armor/kanehachi_mk2/poison_scorpi",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["poison_scorpi","enemy_medabot","killerable","hostile","multi_legged_legs","hold_left_arm","defense_right_arm","melt_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=poison_scorpi,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..1,tag=poison_scorpi] Medabot 0
scoreboard players set @e[distance=..1,tag=poison_scorpi] Killer 0
scoreboard players set @e[distance=..1,tag=poison_scorpi] Charge 0
scoreboard players set @e[distance=..1,tag=poison_scorpi] Battle 2
scoreboard players set @e[distance=..1,tag=poison_scorpi] MaxHeadUses 6
scoreboard players set @e[distance=..1,tag=poison_scorpi] MaxHeadArmor 70
scoreboard players set @e[distance=..1,tag=poison_scorpi] MaxRightArmArmor 65
scoreboard players set @e[distance=..1,tag=poison_scorpi] MaxLeftArmArmor 40
scoreboard players set @e[distance=..1,tag=poison_scorpi] MaxLegsArmor 40
scoreboard players set @e[distance=..1,tag=poison_scorpi] HeadPower 22
scoreboard players set @e[distance=..1,tag=poison_scorpi] RightArmPower 28
scoreboard players set @e[distance=..1,tag=poison_scorpi] LeftArmPower 19
scoreboard players set @e[distance=..1,tag=poison_scorpi] LegsDefense 20
scoreboard players operation @e[distance=..1,tag=poison_scorpi] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=poison_scorpi] MedabotNr 1
execute as @e[distance=..1,tag=poison_scorpi] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=poison_scorpi] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=poison_scorpi] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=poison_scorpi] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=poison_scorpi] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_zigzag"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_zigzag.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:poison_scorpi_zigzag",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:21,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_twist"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hold"}','{"italic":false,"color":"white","translate":"medabots_server:move.hold.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_twist.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kanehachi_mk2_twist",gender:0b,move:"hold",part:"left_arm",armor:40,power:19,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_knightshield"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.knight_armor"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_knightshield.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:knight_armor_knightsield",gender:0b,move:"defense",part:"right_arm",armor:65,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_dog"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_dog.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:poison_scorpi_scorpion_dog",gender:0b,move:"melt",part:"head",armor:70,power:22,uses:6,activated:0b,version:1}}}]}
execute positioned ~ ~ ~ as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=poison_scorpi] MedabotNr