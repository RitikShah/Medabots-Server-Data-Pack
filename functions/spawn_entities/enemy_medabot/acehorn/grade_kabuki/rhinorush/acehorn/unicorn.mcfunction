# Acehorn
summon minecraft:skeleton ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.acehorn"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/enemy_medabot/acehorn/grade_kabuki/rhinorush/acehorn",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["acehorn","enemy_medabot","killerable","hostile","multi_legged_legs","missile_left_arm","confuse_right_arm","status_clear_head","unicorn_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=acehorn,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..1,tag=acehorn] Medabot 0
scoreboard players set @e[distance=..1,tag=acehorn] Killer 0
scoreboard players set @e[distance=..1,tag=acehorn] Charge 0
scoreboard players set @e[distance=..1,tag=acehorn] Battle 2
scoreboard players set @e[distance=..1,tag=acehorn] MaxHeadUses 3
scoreboard players set @e[distance=..1,tag=acehorn] MaxHeadArmor 40
scoreboard players set @e[distance=..1,tag=acehorn] MaxRightArmArmor 50
scoreboard players set @e[distance=..1,tag=acehorn] MaxLeftArmArmor 65
scoreboard players set @e[distance=..1,tag=acehorn] MaxLegsArmor 10
scoreboard players set @e[distance=..1,tag=acehorn] HeadPower 0
scoreboard players set @e[distance=..1,tag=acehorn] RightArmPower 16
scoreboard players set @e[distance=..1,tag=acehorn] LeftArmPower 22
scoreboard players set @e[distance=..1,tag=acehorn] LegsDefense 20
scoreboard players operation @e[distance=..1,tag=acehorn] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=acehorn] MedabotNr 1
execute as @e[distance=..1,tag=acehorn] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=acehorn] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=acehorn] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=acehorn] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=acehorn] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:58,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.acehorn_ace_hooves"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"10"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.acehorn"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.acehorn_ace_hooves.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:acehorn_ace_hooves",gender:0b,move:"multi_legged",part:"legs",armor:10,defense:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_rhinoburn",gender:0b,move:"missile",part:"left_arm",armor:65,power:22,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_dicider"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.confuse"}','{"italic":false,"color":"white","translate":"medabots_server:move.confuse.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.grade_kabuki"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_dicider.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:grade_kabuki_dicider",gender:0b,move:"confuse",part:"right_arm",armor:50,power:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:58,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.acehorn_guardian"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.status_clear"}','{"italic":false,"color":"white","translate":"medabots_server:move.status_clear.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"3"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.acehorn"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.acehorn_guardian.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:acehorn_guardian",gender:0b,move:"status_clear",part:"head",armor:40,power:0,uses:3,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=acehorn] MedabotNr