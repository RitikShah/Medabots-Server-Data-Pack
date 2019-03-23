# Potato-Insect
summon minecraft:skeleton -1906 44 -549 {CustomName:"{\"translate\":\"medabots_server:entity.potato_insect\"}",CustomNameVisisble:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/boxer/second_go/potato_insect",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["potato_insect","enemy_medabot","killerable","hostile","wheel_legs","paralyze_left_arm","freeze_right_arm","bug_head","monkey_medal"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] Stage 29
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] Medabot 0
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] Battle 2
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] MaxHeadUses 7
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] MaxHeadArmor 90
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] MaxRightArmArmor 25
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] MaxLeftArmArmor 40
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] MaxLegsArmor 55
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] HeadPower 25
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] RightArmPower 28
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] LeftArmPower 28
scoreboard players set @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] LegsDefense 28
scoreboard players operation @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] MedabotNr 1
execute as @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[x=-1906,y=44,z=-549,distance=..1,tag=potato_insect] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
summon minecraft:armor_stand -1906 44 -549 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.potato_insect_caterpie\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.wheel\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.weel.description\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"55\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.female\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.potato_insect\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.potato_insect_caterpie.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.potato_insect_caterpie.model\"}"]},medabots_server:{id:"medabots_server:potato_insect_caterpie",gender:1b,move:"wheel",part:"legs",armor:55,defense:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1906 44 -549 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.peppercat_light_blow\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.paralyze\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.paralyze.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"40\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.female\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.peppercat\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.peppercat_light_blow.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.peppercat_light_blow.model\"}"]},medabots_server:{id:"medabots_server:peppercat_light_blow",gender:1b,move:"paralyze",part:"left_arm",armor:40,power:28,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1906 44 -549 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.frappe_flap\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.freeze\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.freeze.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"35\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.female\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.frappe\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.frappe_flap.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.frappe_flap.model\"}"]},medabots_server:{id:"medabots_server:frappe_flap",gender:1b,move:"freeze",part:"right_arm",armor:35,power:26,activated:0b,version:1}}}]}
summon minecraft:armor_stand -1906 44 -549 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}",ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.potato_insect_changedress\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.bug\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.bug.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.more\",\"with\":[{\"text\":\"7\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"90\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.female\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.potato_insect\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.potato_insect_changedress.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.potato_insect_changedress.model\"}"]},medabots_server:{id:"medabots_server:potato_insect_changedress",gender:1b,move:"bug",part:"head",armor:90,power:25,uses:7,activated:0b,version:1}}}]}
execute positioned -1906 44 -549 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=potato_insect] MedabotNr