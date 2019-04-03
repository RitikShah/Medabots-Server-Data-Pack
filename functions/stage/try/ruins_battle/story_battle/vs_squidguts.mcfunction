teleport @s -1997 45 -564
tag @s add walls
tag @s add story_battle
summon minecraft:skeleton -1996 45 -557 {CustomName:'{"translate":"medabots_server:entity.squidguts"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/battle_enemies/squidguts",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["abyss_greater","enemy_medabot","killerable","hostile","swim_legs","sacrifice_left_arm","sacrifice_right_arm","missile_head","kabuto_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] Stage 49
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] Medabot 22
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] Charge 0
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] Battle 1
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MaxHeadUses 5
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MaxHeadArmor 75
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MaxRightArmArmor 50
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MaxLeftArmArmor 50
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MaxLegsArmor 55
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] HeadPower 29
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] RightArmPower 42
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] LeftArmPower 54
scoreboard players set @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] LegsDefense 56
scoreboard players operation @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] MedabotNr 1
execute as @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1996,y=45,z=-557,distance=..0.7,tag=abyss_greater] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1996 45 -557 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:22,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_depth_sole"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.swim"}','{"italic":false,"color":"white","translate":"medabots_server:move.swim.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_depth_sole.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_depth_sole.model"}']},medabots_server:{id:"medabots_server:abyss_greater_depth_sole",gender:0b,move:"swim",part:"legs",armor:55,defense:56,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1996 45 -557 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:22,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_pro_fence"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_pro_fence.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_pro_fence.model"}']},medabots_server:{id:"medabots_server:abyss_greater_pro_fence",gender:0b,move:"sacrifice",part:"left_arm",armor:50,power:54,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1996 45 -557 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:22,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_burst"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_burst.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_burst.model"}']},medabots_server:{id:"medabots_server:abyss_greater_burst",gender:0b,move:"sacrifice",part:"right_arm",armor:50,power:42,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1996 45 -557 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:22,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_enticed"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_enticed.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_enticed.model"}']},medabots_server:{id:"medabots_server:abyss_greater_enticed",gender:0b,move:"missile",part:"head",armor:75,power:29,uses:5,activated:0b,version:1}}}]}
execute positioned -1996 45 -557 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=abyss_greater] MedabotNr
function medabots_server:stage/create/ruins_battle/walls