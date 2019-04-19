# Frappe
summon minecraft:skeleton -1716 44 -334 {CustomName:'{"translate":"medabots_server:entity.frappe"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/ruins_in_a/second_go/frappe",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["frappe","enemy_medabot","killerable","hostile","tank_legs","freeze_left_arm","repair_right_arm","freeze_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe,limit=1] {DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] Stage 8
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] Medabot 0
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] Charge 0
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] Battle 2
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] MaxHeadUses 5
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] MaxHeadArmor 55
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] MaxRightArmArmor 25
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] MaxLeftArmArmor 35
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] MaxLegsArmor 65
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] HeadPower 27
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] RightArmPower 16
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] LeftArmPower 30
scoreboard players set @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] LegsDefense 40
scoreboard players operation @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] MedabotNr 1
execute as @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1716,y=44,z=-334,distance=..1,tag=frappe] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1716 44 -334 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor.model"}']},medabots_server:{id:"medabots_server:frappe_flavor",gender:1b,move:"tank",part:"legs",armor:65,defense:40,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1716 44 -334 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop.model"}']},medabots_server:{id:"medabots_server:frappe_flop",gender:1b,move:"freeze",part:"left_arm",armor:35,power:30,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1716 44 -334 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:44,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_free_arm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.repair"}','{"italic":false,"color":"white","translate":"medabots_server:move.repair.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"25"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pinguen"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_free_arm.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_free_arm.model"}']},medabots_server:{id:"medabots_server:pinguen_free_arm",gender:1b,move:"repair",part:"right_arm",armor:25,power:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1716 44 -334 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip.model"}']},medabots_server:{id:"medabots_server:frappe_flip",gender:1b,move:"freeze",part:"head",armor:55,power:27,uses:5,activated:0b,version:1}}}]}
execute positioned -1716 44 -334 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=frappe] MedabotNr