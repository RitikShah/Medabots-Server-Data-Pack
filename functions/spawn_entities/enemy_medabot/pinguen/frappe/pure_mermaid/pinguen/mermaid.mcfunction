# Pinguen
summon minecraft:skeleton ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.pinguen"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/enemy_medabot/pinguen/frappe/pure_mermaid/pinguen",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["pinguen","enemy_medabot","killerable","hostile","swim_legs","heal_left_arm","freeze_right_arm","repair_head","mermaid_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=pinguen,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..1,tag=pinguen] Medabot 0
scoreboard players set @e[distance=..1,tag=pinguen] Killer 0
scoreboard players set @e[distance=..1,tag=pinguen] Charge 0
scoreboard players set @e[distance=..1,tag=pinguen] Battle 2
scoreboard players set @e[distance=..1,tag=pinguen] MaxHeadUses 5
scoreboard players set @e[distance=..1,tag=pinguen] MaxHeadArmor 40
scoreboard players set @e[distance=..1,tag=pinguen] MaxRightArmArmor 35
scoreboard players set @e[distance=..1,tag=pinguen] MaxLeftArmArmor 40
scoreboard players set @e[distance=..1,tag=pinguen] MaxLegsArmor 40
scoreboard players set @e[distance=..1,tag=pinguen] HeadPower 16
scoreboard players set @e[distance=..1,tag=pinguen] RightArmPower 26
scoreboard players set @e[distance=..1,tag=pinguen] LeftArmPower 50
scoreboard players set @e[distance=..1,tag=pinguen] LegsDefense 56
scoreboard players operation @e[distance=..1,tag=pinguen] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=pinguen] MedabotNr 1
execute as @e[distance=..1,tag=pinguen] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=pinguen] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=pinguen] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=pinguen] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=pinguen] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","female_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:44,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_fin"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.swim"}','{"italic":false,"color":"white","translate":"medabots_server:move.swim.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pinguen"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_fin.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pinguen_fin",gender:1b,move:"swim",part:"legs",armor:40,defense:56,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","female_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:43,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_repair_arm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_repair_arm.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pure_mermaid_repair_arm",gender:1b,move:"heal",part:"left_arm",armor:40,power:50,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","female_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flap",gender:1b,move:"freeze",part:"right_arm",armor:35,power:26,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","female_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:44,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_zera_reactor"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.repair"}','{"italic":false,"color":"white","translate":"medabots_server:move.repair.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pinguen"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_zera_reactor.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pinguen_zera_reactor",gender:1b,move:"repair",part:"head",armor:40,power:16,uses:5,activated:0b,version:1}}}]}
execute positioned ~ ~ ~ as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=pinguen] MedabotNr