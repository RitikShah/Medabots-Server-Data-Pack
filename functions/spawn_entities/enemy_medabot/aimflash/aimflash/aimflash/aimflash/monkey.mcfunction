# Aimflash
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomName:'{"translate":"medabots_server:entity.aimflash"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/enemy_medabot/aimflash/aimflash/aimflash/aimflash",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["aimflash","enemy_medabot","killerable","hostile","wheel_legs","gatling_left_arm","laser_right_arm","falling_head","monkey_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[distance=..1,tag=aimflash,limit=1] {DeathLootTable:"medabots_server:entities/medabot"}
scoreboard players set @e[distance=..1,tag=aimflash] Medabot 26
scoreboard players set @e[distance=..1,tag=aimflash] Killer 0
scoreboard players set @e[distance=..1,tag=aimflash] Charge 0
scoreboard players set @e[distance=..1,tag=aimflash] Battle 2
scoreboard players set @e[distance=..1,tag=aimflash] MaxHeadUses 8
scoreboard players set @e[distance=..1,tag=aimflash] MaxHeadArmor 65
scoreboard players set @e[distance=..1,tag=aimflash] MaxRightArmArmor 20
scoreboard players set @e[distance=..1,tag=aimflash] MaxLeftArmArmor 45
scoreboard players set @e[distance=..1,tag=aimflash] MaxLegsArmor 50
scoreboard players set @e[distance=..1,tag=aimflash] HeadPower 20
scoreboard players set @e[distance=..1,tag=aimflash] RightArmPower 27
scoreboard players set @e[distance=..1,tag=aimflash] LeftArmPower 20
scoreboard players set @e[distance=..1,tag=aimflash] LegsDefense 28
scoreboard players operation @e[distance=..1,tag=aimflash] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[distance=..1,tag=aimflash] MedabotNr 1
execute as @e[distance=..1,tag=aimflash] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[distance=..1,tag=aimflash] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[distance=..1,tag=aimflash] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[distance=..1,tag=aimflash] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[distance=..1,tag=aimflash] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag.model"}']},medabots_server:{id:"medabots_server:aimflash_carrybag",gender:0b,move:"wheel",part:"legs",armor:50,defense:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod.model"}']},medabots_server:{id:"medabots_server:aimflash_tripod",gender:0b,move:"gatling",part:"left_arm",armor:45,power:20,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom.model"}']},medabots_server:{id:"medabots_server:aimflash_zoom",gender:0b,move:"laser",part:"right_arm",armor:20,power:27,activated:0b,version:1}}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","male_tinpet","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe.model"}']},medabots_server:{id:"medabots_server:aimflash_strobe",gender:0b,move:"falling",part:"head",armor:65,power:20,uses:8,activated:0b,version:1}}}]}
execute positioned ~ ~ ~ as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=aimflash] MedabotNr