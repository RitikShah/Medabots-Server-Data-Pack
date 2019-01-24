# Maxsnake
summon minecraft:skeleton -1651 44 -338 {CustomName:"{\"translate\":\"medabots_server:entity.maxsnake\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/ruins_in_a/rubberobo/maxsnake",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["maxsnake","enemy_medabot","killerable","hostile","multi_legged_legs","hide_left_arm","melt_right_arm","infect_head","kuwagata_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] Stage 25
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] Medabot 0
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] Battle 1
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] MaxHeadUses 6
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] MaxHeadArmor 70
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] MaxRightArmArmor 45
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] MaxLeftArmArmor 45
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] MaxLegsArmor 40
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] HeadPower 56
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] RightArmPower 18
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] LeftArmPower 59
scoreboard players set @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] LegsDefense 16
scoreboard players operation @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] MedabotNr 1
execute as @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1651,y=44,z=-338,distance=..1,tag=maxsnake] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1651 44 -338 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:6,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.maxsnake_musk\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.multi_legged\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.multi_legged.description\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"40\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.maxsnake\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.maxsnake_musk.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.maxsnake_musk.model\"}"]},medabots_server:{id:"medabots_server:maxsnake_musk",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:16,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1651 44 -338 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:28,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_invisi_arm\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.hide\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.hide.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"45\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.seven_colors\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_invisi_arm.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.seven_colors_invisi_arm.model\"}"]},medabots_server:{id:"medabots_server:seven_colors_invisi_arm",gender:0b,move:"hide",part:"left_arm",armor:45,power:59,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1651 44 -338 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.hellphoenix_fire_gun\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.melt\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.melt.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"45\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.hellphoenix\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.hellphoenix_fire_gun.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.hellphoenix_fire_gun.model\"}"]},medabots_server:{id:"medabots_server:hellphoenix_fire_gun",gender:0b,move:"melt",part:"right_arm",armor:45,power:18,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1651 44 -338 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:6,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.maxsnake_hacker\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.infect\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.infect.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.more\",\"with\":[{\"text\":\"6\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"70\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.maxsnake\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.maxsnake_hacker.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.maxsnake_hacker.model\"}"]},medabots_server:{id:"medabots_server:maxsnake_hacker",gender:0b,move:"infect",part:"head",armor:70,power:56,uses:6,activated:0b,version:1}}}]}
execute positioned -1651 44 -338 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=maxsnake] MedabotNr

# Player
teleport @s -1683 44 -259
function medabots_server:stage/create/ruins_in_a/rubberobo