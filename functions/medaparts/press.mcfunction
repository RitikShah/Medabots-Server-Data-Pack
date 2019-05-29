# Set which part is activated
scoreboard players set @s[scores={Time=20,Press=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:dragonbeetle_veryweighter"}}}]}] MedapartType 1
scoreboard players set @s[scores={Time=20,Press=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:dragonbeetle_hardweighter"}}}]}] MedapartType 2
scoreboard players set @s[scores={Time=20,Press=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:dragonbeetle_heavyweighter"}}}]}] MedapartType 3
scoreboard players set @s[scores={Time=20,Press=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:king_pharaoh_dark_hall"}}}]}] MedapartType 4
scoreboard players set @s[scores={Time=20,Press=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:uglyduck_featherdone"}}}]}] MedapartType 5
scoreboard players set @s[scores={Time=20,Press=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:rob_stack_arm"}}}]}] MedapartType 6
scoreboard players set @s[scores={Time=20,Press=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:ashton_ash_breaker"}}}]}] MedapartType 7

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Press=1,Time=20..22,Drop=0}] hotbar.0 minecraft:snowball{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.press"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.throw"}']},medabots_server:{id:"medabots_server:press"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Press=3,Time=20..22,Drop=0}] hotbar.2 minecraft:snowball{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.press"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.throw"}']},medabots_server:{id:"medabots_server:press"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Press=2,Time=20..22,Drop=0}] hotbar.1 minecraft:snowball{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.press"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.throw"}']},medabots_server:{id:"medabots_server:press"}}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Press=1..,Time=20},type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^ ^1 {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","cpu_owned","enemy_team"],NoGravity:1b}
replaceitem entity @s[scores={Press=1,Time=20..22,Drop=0,ScoutTime=1..}] hotbar.0 minecraft:snowball{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.press"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.throw"}']},medabots_server:{id:"medabots_server:press",strong:1b}}
replaceitem entity @s[scores={Press=3,Time=20..22,Drop=0,ScoutTime=1..}] hotbar.2 minecraft:snowball{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.press"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.throw"}']},medabots_server:{id:"medabots_server:press",strong:1b}}
replaceitem entity @s[scores={Press=2,Time=20..22,Drop=0,ScoutTime=1..}] hotbar.1 minecraft:snowball{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.press"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.throw"}']},medabots_server:{id:"medabots_server:press",strong:1b}}
execute if entity @s[scores={Press=1..,Time=20,ScoutTime=1..},type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^ ^1 {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","cpu_owned","enemy_team","strong"],NoGravity:1b}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Press=2,Time=22}] HeadUses 1

# Remove the weapon
clear @s[scores={Time=60..}] minecraft:snowball{medabots_server:{id:"medabots_server:press"}}

# Give back the original part
replaceitem entity @s[scores={MedapartType=1,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter.model"}']},medabots_server:{id:"medabots_server:dragonbeetle_veryweighter",gender:0b,move:"press",part:"left_arm",armor:70,power:24,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=2,Time=60..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"105"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter.model"}']},medabots_server:{id:"medabots_server:dragonbeetle_hardweighter",gender:0b,move:"press",part:"head",armor:105,power:25,uses:15,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=3,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter.model"}']},medabots_server:{id:"medabots_server:dragonbeetle_heavyweighter",gender:0b,move:"press",part:"right_arm",armor:70,power:18,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=4,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall.model"}']},medabots_server:{id:"medabots_server:king_pharaoh_dark_hall",gender:0b,move:"press",part:"left_arm",armor:80,power:22,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=5,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:42,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_featherdone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_featherdone.model"}']},medabots_server:{id:"medabots_server:uglyduck_featherdone",gender:1b,move:"press",part:"left_arm",armor:65,power:26,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=6,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:49,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rob_stack_arm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rob"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rob_stack_arm.model"}']},medabots_server:{id:"medabots_server:rob_stack_arm",gender:0b,move:"press",part:"right_arm",armor:35,power:24,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=7,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:48,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ashton_ash_breaker"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.ashton"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.ashton_ash_breaker.model"}']},medabots_server:{id:"medabots_server:ashton_ash_breaker",gender:0b,move:"press",part:"right_arm",armor:40,power:17,activated:1b,version:1}}

# Finish the move
scoreboard players reset @s[scores={Press=1,Time=60..},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] Press
scoreboard players reset @s[scores={Press=2,Time=60..},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] Press
scoreboard players reset @s[scores={Press=3,Time=60..},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"head"}}}]}] Press
scoreboard players reset @s[scores={Press=1..,Time=60..},type=!minecraft:player] Press
execute unless entity @s[scores={Press=1..}] run scoreboard players reset @s MedapartType
execute unless entity @s[scores={Press=1..}] run scoreboard players set @s Time 0

# Increase time by 1
scoreboard players add @s[scores={Press=1..}] Time 1

# Attacked by shooting trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!ally_team,tag=!enemy_team] run function medabots_server:medaparts/shooting_trap_hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=ally_team] if entity @s[tag=!ally_team] run function medabots_server:medaparts/shooting_trap_hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=enemy_team] if entity @s[tag=!enemy_team] run function medabots_server:medaparts/shooting_trap_hit

# Name the attack
#execute as run data; MC-121807
execute if entity @s[tag=!ally_medabot,tag=!enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press"]}
execute if entity @s[tag=ally_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","ally_team"]}
execute if entity @s[tag=enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","enemy_team"]}
execute if entity @s[tag=!ally_medabot,tag=!enemy_medabot,scores={ScoutTime=1..}] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","strong"]}
execute if entity @s[tag=ally_medabot,scores={ScoutTime=1..}] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","ally_team","strong"]}
execute if entity @s[tag=enemy_medabot,scores={ScoutTime=1..}] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!press] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","enemy_team","strong"]}