# Bluesdog
summon minecraft:skeleton ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.bluesdog"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/enemy_medabot/bluesdog/bluesdog/bluesdog/bluesdog",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["bluesdog","enemy_medabot","killerable","hostile","two_legged_legs","rifle_left_arm","rifle_right_arm","rifle_head","kabuto_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=bluesdog,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..1,tag=bluesdog] Medabot 8
scoreboard players set @e[distance=..1,tag=bluesdog] Killer 0
scoreboard players set @e[distance=..1,tag=bluesdog] Charge 0
scoreboard players set @e[distance=..1,tag=bluesdog] Battle 2
scoreboard players set @e[distance=..1,tag=bluesdog] MaxHeadUses 18
scoreboard players set @e[distance=..1,tag=bluesdog] MaxHeadArmor 60
scoreboard players set @e[distance=..1,tag=bluesdog] MaxRightArmArmor 40
scoreboard players set @e[distance=..1,tag=bluesdog] MaxLeftArmArmor 40
scoreboard players set @e[distance=..1,tag=bluesdog] MaxLegsArmor 45
scoreboard players set @e[distance=..1,tag=bluesdog] HeadPower 40
scoreboard players set @e[distance=..1,tag=bluesdog] RightArmPower 16
scoreboard players set @e[distance=..1,tag=bluesdog] LeftArmPower 20
scoreboard players set @e[distance=..1,tag=bluesdog] LegsDefense 36
scoreboard players operation @e[distance=..1,tag=bluesdog] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=bluesdog] MedabotNr 1
execute as @e[distance=..1,tag=bluesdog] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=bluesdog] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=bluesdog] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=bluesdog] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=bluesdog] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_howzer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_howzer.model"}']},medabots_server:{id:"medabots_server:bluesdog_howzer",gender:0b,move:"two_legged",part:"legs",armor:45,defense:36,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle.model"}']},medabots_server:{id:"medabots_server:bluesdog_battle_rifle",gender:0b,move:"rifle",part:"left_arm",armor:40,power:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle.model"}']},medabots_server:{id:"medabots_server:bluesdog_aim_rifle",gender:0b,move:"rifle",part:"right_arm",armor:40,power:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"18"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon.model"}']},medabots_server:{id:"medabots_server:bluesdog_headcannon",gender:0b,move:"rifle",part:"head",armor:60,power:40,uses:18,activated:0b,version:1}}}]}
execute positioned ~ ~ ~ as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=bluesdog] MedabotNr