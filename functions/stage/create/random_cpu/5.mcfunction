# Attack-Tyrano
summon minecraft:skeleton ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.attack_tyrano"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/random_cpu/5",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["attack_tyrano","enemy_medabot","killerable","hostile","wheel_legs","hammer_left_arm","status_clear_right_arm","melt_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=attack_tyrano,limit=1] {DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}
scoreboard players set @e[distance=..1,tag=attack_tyrano] Medabot 0
scoreboard players set @e[distance=..1,tag=attack_tyrano] Charge 0
scoreboard players set @e[distance=..1,tag=attack_tyrano] Battle 2
scoreboard players set @e[distance=..1,tag=attack_tyrano] MaxHeadUses 7
scoreboard players set @e[distance=..1,tag=attack_tyrano] MaxHeadArmor 70
scoreboard players set @e[distance=..1,tag=attack_tyrano] MaxRightArmArmor 30
scoreboard players set @e[distance=..1,tag=attack_tyrano] MaxLeftArmArmor 30
scoreboard players set @e[distance=..1,tag=attack_tyrano] MaxLegsArmor 50
scoreboard players set @e[distance=..1,tag=attack_tyrano] HeadPower 17
scoreboard players set @e[distance=..1,tag=attack_tyrano] RightArmPower 0
scoreboard players set @e[distance=..1,tag=attack_tyrano] LeftArmPower 17
scoreboard players set @e[distance=..1,tag=attack_tyrano] LegsDefense 54
scoreboard players operation @e[distance=..1,tag=attack_tyrano] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=attack_tyrano] MedabotNr 1
execute as @e[distance=..1,tag=attack_tyrano] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=attack_tyrano] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=attack_tyrano] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=attack_tyrano] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=attack_tyrano] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:60,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ka_o_lantern_squash_basher"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.ka_o_lantern"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.ka_o_lantern_squash_basher.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.ka_o_lantern_squash_basher.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:ka_o_lantern_squash_basher",gender:0b,move:"wheel",part:"legs",armor:50,defense:54,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:55,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.smilidonad_straw_hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.smilidonad"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.smilidonad_straw_hammer.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.smilidonad_straw_hammer.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:smilidonad_straw_hammer",gender:0b,move:"hammer",part:"left_arm",armor:30,power:17,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:58,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.acehorn_canceller"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.status_clear"}','{"italic":false,"color":"white","translate":"medabots_server:move.status_clear.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.acehorn"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.acehorn_canceller.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.acehorn_canceller.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:acehorn_canceller",gender:0b,move:"status_clear",part:"right_arm",armor:30,power:0,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_breathfire"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_breathfire.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_breathfire.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:attack_tyrano_breathfire",gender:0b,move:"melt",part:"head",armor:70,power:17,uses:7,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=attack_tyrano] MedabotNr