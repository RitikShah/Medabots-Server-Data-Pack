# Doctor Study
summon minecraft:skeleton -1610 45 -464 {CustomName:'{"translate":"medabots_server:entity.dondoguu"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/jungle_b/second_go/dondoguu",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["dondoguu","enemy_medabot","killerable","hostile","float_legs","confuse_left_arm","melt_right_arm","guard_gunpowder_head","mermaid_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] Stage 12
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] Medabot 0
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] Charge 0
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] Battle 2
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] MaxHeadUses 6
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] MaxHeadArmor 80
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] MaxRightArmArmor 45
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] MaxLeftArmArmor 50
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] MaxLegsArmor 65
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] HeadPower 0
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] RightArmPower 18
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] LeftArmPower 16
scoreboard players set @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] LegsDefense 27
scoreboard players operation @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] MedabotNr 1
execute as @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1610,y=45,z=-464,distance=..1,tag=dondoguu] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1610 45 -464 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:30,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dokan"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dokan.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dokan.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dondoguu_dokan",gender:0b,move:"float",part:"legs",armor:65,defense:27,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1610 45 -464 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.confuse"}','{"italic":false,"color":"white","translate":"medabots_server:move.confuse.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.grade_kabuki"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:grade_kabuki_acting",gender:0b,move:"confuse",part:"left_arm",armor:50,power:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1610 45 -464 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_fire_gun",gender:0b,move:"melt",part:"right_arm",armor:45,power:18,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1610 45 -464 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:30,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dogu"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.guard_gunpowder"}','{"italic":false,"color":"white","translate":"medabots_server:move.guard_gunpowder.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dogu.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dogu.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dondoguu_dogu",gender:0b,move:"guard_gunpowder",part:"head",armor:80,power:0,uses:6,activated:0b,version:1}}}]}
execute positioned -1610 45 -464 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=dondoguu] MedabotNr