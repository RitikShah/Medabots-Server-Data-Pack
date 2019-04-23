# Doctor Study
summon minecraft:skeleton -1652 45 -129 {CustomName:'{"translate":"medabots_server:entity.doctor_study"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/jungle_a/first_go/doctor_study",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["doctor_study","enemy_medabot","killerable","hostile","wheel_legs","guard_gravity_left_arm","infect_right_arm","scout_head","chameleon_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study,limit=1] {DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] Stage 3
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] Medabot 0
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] Charge 0
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] Battle 2
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] MaxHeadUses 5
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] MaxHeadArmor 100
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] MaxRightArmArmor 45
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] MaxLeftArmArmor 55
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] MaxLegsArmor 60
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] HeadPower 56
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] RightArmPower 30
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] LeftArmPower 0
scoreboard players set @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] LegsDefense 28
scoreboard players operation @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] MedabotNr 1
execute as @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1652,y=45,z=-129,distance=..1,tag=doctor_study] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1652 45 -129 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:3,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_chairly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.doctor_study"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_chairly.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_chairly.model"}']},medabots_server:{id:"medabots_server:doctor_study_chairly",gender:0b,move:"wheel",part:"legs",armor:60,defense:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1652 45 -129 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:30,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtattack"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.guard_gravity"}','{"italic":false,"color":"white","translate":"medabots_server:move.guard_gravity.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtattack.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtattack.model"}']},medabots_server:{id:"medabots_server:dondoguu_dohtattack",gender:0b,move:"guard_gravity",part:"left_arm",armor:55,power:0,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1652 45 -129 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_virus"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.infect"}','{"italic":false,"color":"white","translate":"medabots_server:move.infect.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_virus.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_virus.model"}']},medabots_server:{id:"medabots_server:maxsnake_virus",gender:0b,move:"infect",part:"right_arm",armor:45,power:30,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1652 45 -129 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:3,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_search_radar"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"100"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.doctor_study"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_search_radar.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_search_radar.model"}']},medabots_server:{id:"medabots_server:doctor_study_search_radar",gender:0b,move:"scout",part:"head",armor:100,power:56,uses:5,activated:0b,version:1}}}]}
execute positioned -1652 45 -129 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=doctor_study] MedabotNr