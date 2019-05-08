# Poison Scorpi
summon minecraft:skeleton ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.poison_scorpi"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/random_cpu/2",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["poison_scorpi","enemy_medabot","killerable","hostile","tank_legs","napalm_left_arm","melt_right_arm","melt_head","devil_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=poison_scorpi,limit=1] {DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}
scoreboard players set @e[distance=..1,tag=poison_scorpi] Medabot 0
scoreboard players set @e[distance=..1,tag=poison_scorpi] Charge 0
scoreboard players set @e[distance=..1,tag=poison_scorpi] Battle 2
scoreboard players set @e[distance=..1,tag=poison_scorpi] MaxHeadUses 6
scoreboard players set @e[distance=..1,tag=poison_scorpi] MaxHeadArmor 70
scoreboard players set @e[distance=..1,tag=poison_scorpi] MaxRightArmArmor 45
scoreboard players set @e[distance=..1,tag=poison_scorpi] MaxLeftArmArmor 50
scoreboard players set @e[distance=..1,tag=poison_scorpi] MaxLegsArmor 80
scoreboard players set @e[distance=..1,tag=poison_scorpi] HeadPower 22
scoreboard players set @e[distance=..1,tag=poison_scorpi] RightArmPower 22
scoreboard players set @e[distance=..1,tag=poison_scorpi] LeftArmPower 24
scoreboard players set @e[distance=..1,tag=poison_scorpi] LegsDefense 80
scoreboard players operation @e[distance=..1,tag=poison_scorpi] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=poison_scorpi] MedabotNr 1
execute as @e[distance=..1,tag=poison_scorpi] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=poison_scorpi] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=poison_scorpi] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=poison_scorpi] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=poison_scorpi] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:34,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hipporet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hippopojamas"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hipporet.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hipporet.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hippopojamas_hipporet",gender:0b,move:"tank",part:"legs",armor:80,defense:80,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burncapsule"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burncapsule.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burncapsule.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:fly_falcon_burncapsule",gender:0b,move:"napalm",part:"left_arm",armor:50,power:24,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_cat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_cat.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_cat.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:poison_scorpi_scorpion_cat",gender:0b,move:"melt",part:"right_arm",armor:45,power:22,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_dog"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_dog.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_dog.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:poison_scorpi_scorpion_dog",gender:0b,move:"melt",part:"head",armor:70,power:22,uses:6,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=poison_scorpi] MedabotNr