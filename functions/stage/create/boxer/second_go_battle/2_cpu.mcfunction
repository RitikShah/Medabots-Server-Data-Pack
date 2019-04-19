# Peppercat
summon minecraft:skeleton -1873 44 -594 {CustomName:'{"translate":"medabots_server:entity.peppercat"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/boxer/second_go/peppercat",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["peppercat","enemy_medabot","killerable","hostile","two_legged_legs","paralyze_left_arm","paralyze_right_arm","paralyze_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat,limit=1] {DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] Stage 29
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] Medabot 27
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] Charge 0
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] Battle 2
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] MaxHeadUses 7
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] MaxHeadArmor 60
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] MaxRightArmArmor 40
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] MaxLeftArmArmor 40
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] MaxLegsArmor 40
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] HeadPower 44
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] RightArmPower 24
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] LeftArmPower 28
scoreboard players set @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] LegsDefense 40
scoreboard players operation @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] MedabotNr 1
execute as @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1873,y=44,z=-594,distance=..1,tag=peppercat] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1873 44 -594 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_quick_alert"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_quick_alert.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_quick_alert.model"}']},medabots_server:{id:"medabots_server:peppercat_quick_alert",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1873 44 -594 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_light_blow"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.paralyze"}','{"italic":false,"color":"white","translate":"medabots_server:move.paralyze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_light_blow.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_light_blow.model"}']},medabots_server:{id:"medabots_server:peppercat_light_blow",gender:1b,move:"paralyze",part:"left_arm",armor:40,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1873 44 -594 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightjump"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.paralyze"}','{"italic":false,"color":"white","translate":"medabots_server:move.paralyze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightjump.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightjump.model"}']},medabots_server:{id:"medabots_server:peppercat_lightjump",gender:1b,move:"paralyze",part:"right_arm",armor:40,power:24,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1873 44 -594 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightcircuit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.paralyze"}','{"italic":false,"color":"white","translate":"medabots_server:move.paralyze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightcurcuit.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightcurcuit.model"}']},medabots_server:{id:"medabots_server:peppercat_lightcurcuit",gender:1b,move:"paralyze",part:"head",armor:60,power:44,uses:7,activated:0b,version:1}}}]}
execute positioned -1873 44 -594 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=peppercat] MedabotNr