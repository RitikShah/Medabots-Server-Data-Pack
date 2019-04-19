# Nin-Ninja
summon minecraft:skeleton -1697 45 -167 {CustomName:'{"translate":"medabots_server:entity.nin_ninja"}',CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/jungle_a/second_go/nin_ninja",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["nin_ninja","enemy_medabot","killerable","hostile","two_legged_legs","melt_left_arm","destroy_right_arm","melee_trap_head","knight_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
execute if entity @s[tag=practice_battle] run data merge entity @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja,limit=1] {DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] Stage 3
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] Medabot 0
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] Charge 0
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] Battle 2
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] MaxHeadUses 8
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] MaxHeadArmor 70
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] MaxRightArmArmor 35
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] MaxLeftArmArmor 45
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] MaxLegsArmor 45
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] HeadPower 22
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] RightArmPower 46
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] LeftArmPower 28
scoreboard players set @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] LegsDefense 60
scoreboard players operation @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] MedabotNr 1
execute as @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1697,y=45,z=-167,distance=..1,tag=nin_ninja] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1697 45 -167 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_tiptoe"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_tiptoe.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_tiptoe.model"}']},medabots_server:{id:"medabots_server:nin_ninja_tiptoe",gender:0b,move:"two_legged",part:"legs",armor:45,defense:60,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1697 45 -167 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat.model"}']},medabots_server:{id:"medabots_server:poison_scorpi_scorpion_rat",gender:0b,move:"melt",part:"left_arm",armor:45,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1697 45 -167 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:20,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_environment"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_environment.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_environment.model"}']},medabots_server:{id:"medabots_server:basstroyer_environment",gender:0b,move:"destroy",part:"right_arm",armor:35,power:46,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1697 45 -167 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_cover_up"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melee_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.melee_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"18"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_cover_up.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_cover_up.model"}']},medabots_server:{id:"medabots_server:nin_ninja_cover_up",gender:0b,move:"melee_trap",part:"head",armor:70,power:22,uses:8,activated:0b,version:1}}}]}
execute positioned -1697 45 -167 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=nin_ninja] MedabotNr