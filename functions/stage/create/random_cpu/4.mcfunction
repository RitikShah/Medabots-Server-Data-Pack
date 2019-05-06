# Ka o' Lantern
summon minecraft:skeleton ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.ka_o_lantern"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/random_cpu/4",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["ka_o_lantern","enemy_medabot","killerable","hostile","multi_legged_legs","no_defend_left_arm","melt_right_arm","no_defend_head","chameleon_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=ka_o_lantern,limit=1] {DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}
scoreboard players set @e[distance=..1,tag=ka_o_lantern] Medabot 0
scoreboard players set @e[distance=..1,tag=ka_o_lantern] Charge 0
scoreboard players set @e[distance=..1,tag=ka_o_lantern] Battle 2
scoreboard players set @e[distance=..1,tag=ka_o_lantern] MaxHeadUses 4
scoreboard players set @e[distance=..1,tag=ka_o_lantern] MaxHeadArmor 45
scoreboard players set @e[distance=..1,tag=ka_o_lantern] MaxRightArmArmor 45
scoreboard players set @e[distance=..1,tag=ka_o_lantern] MaxLeftArmArmor 20
scoreboard players set @e[distance=..1,tag=ka_o_lantern] MaxLegsArmor 40
scoreboard players set @e[distance=..1,tag=ka_o_lantern] HeadPower 80
scoreboard players set @e[distance=..1,tag=ka_o_lantern] RightArmPower 18
scoreboard players set @e[distance=..1,tag=ka_o_lantern] LeftArmPower 68
scoreboard players set @e[distance=..1,tag=ka_o_lantern] LegsDefense 16
scoreboard players operation @e[distance=..1,tag=ka_o_lantern] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=ka_o_lantern] MedabotNr 1
execute as @e[distance=..1,tag=ka_o_lantern] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=ka_o_lantern] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=ka_o_lantern] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=ka_o_lantern] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=ka_o_lantern] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_musk"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_musk.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_musk.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:maxsnake_musk",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:60,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ka_o_lantern_keen"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.ka_o_lantern"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.ka_o_lantern_keen.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.ka_o_lantern_keen.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:ka_o_lantern_keen",gender:0b,move:"no_defend",part:"left_arm",armor:20,power:68,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_fire_gun",gender:0b,move:"melt",part:"right_arm",armor:45,power:18,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:60,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ka_o_lantern_pan"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.ka_o_lantern"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.ka_o_lantern_pan.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.ka_o_lantern_pan.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:ka_o_lantern_pan",gender:0b,move:"no_defend",part:"head",armor:40,power:80,uses:4,activated:0b,version:1}}}]}
execute as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=ka_o_lantern] MedabotNr