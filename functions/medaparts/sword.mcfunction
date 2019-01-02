# Increase time by 1
scoreboard players add @s Time 1

# Set which part is activated
scoreboard players set @s[scores={Time=2,Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:dorcus_fourvice"}}}]}] MedapartType 1
scoreboard players set @s[scores={Time=2,Sword=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:nin_ninja_ninja_sword"}}}]}] MedapartType 2
scoreboard players set @s[scores={Time=2,Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:nin_ninja_ninja_dagger"}}}]}] MedapartType 3
scoreboard players set @s[scores={Time=2,Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:fancyroll_magicalbit"}}}]}] MedapartType 4
scoreboard players set @s[scores={Time=2,Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:blackstag_blackvice"}}}]}] MedapartType 5
scoreboard players set @s[scores={Time=2,Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:darknut_darksword"}}}]}] MedapartType 6
scoreboard players set @s[scores={Time=2,Sword=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:zant_usurper_scimitar"}}}]}] MedapartType 7
scoreboard players set @s[scores={Time=2,Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:zant_twilight_scimitar"}}}]}] MedapartType 8
scoreboard players set @s[scores={Time=2,Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:suzumega_hummer_chopper_sword"}}}]}] MedapartType 9
scoreboard players set @s[scores={Time=2,Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:master_code_master_edges"}}}]}] MedapartType 10
scoreboard players set @s[scores={Time=2,Sword=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:metal_general_general_slash"}}}]}] MedapartType 11
scoreboard players set @s[scores={Time=2,Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:smilidonad_flexor_sword"}}}]}] MedapartType 12 
scoreboard players set @s[scores={Time=2,Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:rokusho_sword"}}}]}] MedapartType 13

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Sword=1}] Time 19
scoreboard players set @s[scores={Time=3,Sword=3}] Time 27

# Give the weapon
replaceitem entity @s[scores={Sword=1,Time=32..34,Drop=0}] hotbar.1 minecraft:iron_sword{Unbreakable:1b,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.strike\"}"]},medabots_server:{id:"medabots_server:sword"}}
replaceitem entity @s[scores={Sword=3,Time=32..34,Drop=0}] hotbar.2 minecraft:iron_sword{Unbreakable:1b,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.strike\"}"]},medabots_server:{id:"medabots_server:sword"}}
replaceitem entity @s[scores={Sword=2,Time=32..34,Drop=0}] hotbar.3 minecraft:iron_sword{Unbreakable:1b,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.strike\"}"]},medabots_server:{id:"medabots_server:sword"}}
replaceitem entity @s[scores={Sword=1..,Time=32..34},type=!minecraft:player] weapon.mainhand minecraft:iron_sword{Unbreakable:1b,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.strike\"}"]},medabots_server:{id:"medabots_server:sword"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Sword=2,Time=32}] HeadUses 1

# Remove the weapon
clear @s[scores={Time=64}] minecraft:iron_sword{medabots_server:{id:"medabots_server:sword"}}
replaceitem entity @s[scores={Time=64},type=!minecraft:player] weapon.mainhand minecraft:air

# Give back the original part
replaceitem entity @s[scores={MedapartType=1,Time=66..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.dorcus_fourvice\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"45\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.dorcus\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.dorcus_fourvice.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.dorcus_fourvice.model\"}"]},medabots_server:{id:"medabots_server:dorcus_fourvice",gender:0b,move:"sword",part:"right_arm",armor:45,power:32,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=2,Time=66..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.nin_ninja_ninja_sword\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"40\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.nin_ninja\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.nin_ninja_ninja_sword.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.nin_ninja_ninja_sword.model\"}"]},medabots_server:{id:"medabots_server:nin_ninja_ninja_sword",gender:0b,move:"sword",part:"left_arm",armor:40,power:28,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=3,Time=66..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.nin_ninja_ninja_dagger\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"40\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.nin_ninja\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.nin_ninja_ninja_dagger.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.nin_ninja_ninja_dagger.model\"}"]},medabots_server:{id:"medabots_server:nin_ninja_ninja_dagger",gender:0b,move:"sword",part:"right_arm",armor:40,power:20,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=4,Time=66..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:36,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fancyroll_magicalbit\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"30\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.female\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.fancyroll\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fancyroll_magicalbit.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fancyroll_magicalbit.model\"}"]},medabots_server:{id:"medabots_server:fancyroll_magicalbit",gender:1b,move:"sword",part:"right_arm",armor:30,power:20,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=5,Time=66..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:14,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.blackstag_blackvice\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"35\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.female\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.blackstag\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","aim at their vital spots.","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.blackstag_blackvice.model\"}"]},medabots_server:{id:"medabots_server:blackstag_blackvice",gender:1b,move:"sword",part:"right_arm",armor:35,power:24,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=6,Time=66..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:23,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.darknut_darksword\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"75\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.darknut\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.darknut_darksword.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.darknut_darksword.model\"}"]},medabots_server:{id:"medabots_server:darknut_darksword",gender:0b,move:"sword",part:"right_arm",armor:75,power:30,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=7,Time=66..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:25,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.zant_usurper_scimitar\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"55\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.zant\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.zant_usurper_scimitar.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.zant_usurper_scimitar.model\"}"]},medabots_server:{id:"medabots_server:zant_usurper_scimitar",gender:0b,move:"sword",part:"left_arm",armor:55,power:28,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=8,Time=66..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:25,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.zant_twilight_scimitar\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"55\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.zant\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.zant_twilight_scimitar.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.zant_twilight_scimitar.model\"}"]},medabots_server:{id:"medabots_server:zant_twilight_scimitar",gender:0b,move:"sword",part:"right_arm",armor:55,power:24,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=9,Time=66..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:67,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.suzumega_hummer_chopper_sword\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"12\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.suzumega_hummer\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.suzumega_hummer_chopper_sword.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.suzumega_hummer_chopper_sword.model\"}"]},medabots_server:{id:"medabots_server:suzumega_hummer_chopper_sword",gender:0b,move:"sword",part:"right_arm",armor:12,power:65,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=10,Time=66..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:51,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.master_core_master_edges\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"110\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.neutral\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.master_core\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.master_code_master_edges.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.master_code_master_edges.model\"}"]},medabots_server:{id:"medabots_server:master_core_master_edges",gender:2b,move:"sword",part:"right_arm",armor:110,power:20,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=11,Time=66..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:54,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.metal_general_general_slash\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"65\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.metal_general\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.metal_general_general_slash.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.metal_general_general_slash.model\"}"]},medabots_server:{id:"medabots_server:metal_general_general_slash",gender:0b,move:"sword",part:"left_arm",armor:65,power:24,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=12,Time=66..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:55,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.smilidonad_flexor_sword\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"30\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.smilidonad\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.smilidonad_flexor_sword.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.smilidonad_flexor_sword.model\"}"]},medabots_server:{id:"medabots_server:smilidonad_flexor_sword",gender:0b,move:"sword",part:"right_arm",armor:30,power:25,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=13,Time=66..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:63,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.rokusho_sword\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.sword.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"30\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.rokusho\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.rokusho_sword.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.rokusho_sword.model\"}"]},medabots_server:{id:"medabots_server:rokusho_sword",gender:0b,move:"sword",part:"right_arm",armor:30,power:17,activated:1b,version:1}}

# Finish the move
scoreboard players reset @s[scores={Sword=1,Time=66..},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] Sword
scoreboard players reset @s[scores={Sword=3,Time=66..},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] Sword
scoreboard players reset @s[scores={Sword=2,Time=66..},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"head"}}}]}] Sword
scoreboard players reset @s[scores={Sword=1..,Time=66..},type=!minecraft:player] Sword
execute unless entity @s[scores={Sword=1..}] run scoreboard players reset @s MedapartType
execute unless entity @s[scores={Sword=1..}] run scoreboard players set @s Time 1

# Allow dealing damage
effect clear @s minecraft:weakness

# Attacked by melee trap
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] if entity @s[scores={Death=1..},type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run tag @s[scores={Death=1..}] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team]
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run effect give @s[tag=!undead,tag=!ally_medabot] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run effect give @s[tag=undead,tag=!ally_medabot] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[scores={Death=1..},type=minecraft:player,tag=!ally_medabot] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run tag @s[scores={Death=1..},tag=!ally_medabot] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[tag=!ally_medabot] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team]
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run effect give @s[tag=!undead,tag=!enemy_medabot] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run effect give @s[tag=undead,tag=!enemy_medabot] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[scores={Death=1..},type=minecraft:player,tag=!enemy_medabot] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run tag @s[scores={Death=1..},tag=!enemy_medabot] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[tag=!enemy_medabot] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team]