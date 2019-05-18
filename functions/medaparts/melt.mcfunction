# Set which part was activated
scoreboard players set @s[scores={Time=20,Melt=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:hellphoenix_flame_gun"}}}]}] MedapartType 1
scoreboard players set @s[scores={Time=20,Melt=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:helphoenix_blast_gun"}}}]}] MedapartType 2
scoreboard players set @s[scores={Time=20,Melt=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:hellphoenix_fire_gun"}}}]}] MedapartType 3
scoreboard players set @s[scores={Time=20,Melt=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:poison_scorpi_scorpion_rat"}}}]}] MedapartType 4
scoreboard players set @s[scores={Time=20,Melt=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:poison_scorpi_scorpion_dog"}}}]}] MedapartType 5
scoreboard players set @s[scores={Time=20,Melt=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:poison_scorpi_scorpion_cat"}}}]}] MedapartType 6
scoreboard players set @s[scores={Time=20,Melt=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:flame_tisara_sala_arm"}}}]}] MedapartType 7
scoreboard players set @s[scores={Time=20,Melt=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:flame_tisara_sala_head"}}}]}] MedapartType 8
scoreboard players set @s[scores={Time=20,Melt=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:flame_tisara_sala_hand"}}}]}] MedapartType 9
scoreboard players set @s[scores={Time=20,Melt=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:attack_tyrano_breathfire"}}}]}] MedapartType 10
scoreboard players set @s[scores={Time=20,Melt=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:sphere_doomers_fire_doomer"}}}]}] MedapartType 11

# Give the weapon
replaceitem entity @s[scores={Melt=1,Time=20..22,Drop=0}] hotbar.1 minecraft:fire_charge{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.melt"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],medabots_server:{id:"medabots_server:melt"}}
replaceitem entity @s[scores={Melt=3,Time=20..22,Drop=0}] hotbar.2 minecraft:fire_charge{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.melt"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],medabots_server:{id:"medabots_server:melt"}}
replaceitem entity @s[scores={Melt=2,Time=20..22,Drop=0}] hotbar.3 minecraft:fire_charge{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.melt"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],medabots_server:{id:"medabots_server:melt"}}
replaceitem entity @s[scores={Melt=2,Time=20..22},type=!minecraft:player] weapon.mainhand minecraft:fire_charge{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.melt"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],medabots_server:{id:"medabots_server:melt"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Melt=2,Time=22}] HeadUses 1

# Remove the weapon
clear @s[scores={Time=60..}] minecraft:fire_charge{medabots_server:{id:"medabots_server:melt"}}
replaceitem entity @s[scores={Time=60..},type=!minecraft:player] weapon.mainhand minecraft:air

# Give back the original part
replaceitem entity @s[scores={MedapartType=1,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun.model"}']},medabots_server:{id:"medabots_server:hellphoenix_flame_gun",gender:0b,move:"melt",part:"left_arm",armor:45,power:22,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=2,Time=60..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_blast_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_blast_gun.model"}']},medabots_server:{id:"medabots_server:hellphoenix_blast_gun",gender:0b,move:"melt",part:"head",armor:65,power:23,uses:7,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=3,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun.model"}']},medabots_server:{id:"medabots_server:hellphoenix_fire_gun",gender:0b,move:"melt",part:"right_arm",armor:45,power:18,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=4,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat.model"}']},medabots_server:{id:"medabots_server:poison_scorpi_scorpion_rat",gender:0b,move:"melt",part:"left_arm",armor:45,power:28,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=5,Time=60..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_dog"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_dog.model"}']},medabots_server:{id:"medabots_server:poison_scorpi_scorpion_dog",gender:0b,move:"melt",part:"head",armor:70,power:22,uses:6,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=6,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_cat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_cat.model"}']},medabots_server:{id:"medabots_server:poison_scorpi_scorpion_cat",gender:0b,move:"melt",part:"right_arm",armor:45,power:22,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=7,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:38,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisara_sala_arm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.flame_tisara"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisara_sala_arm.model"}']},medabots_server:{id:"medabots_server:flame_tisara_sala_arm",gender:1b,move:"melt",part:"left_arm",armor:60,power:33,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=8,Time=60..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:38,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisara_sala_head"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"95"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.flame_tisara"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisara_sala_head.model"}']},medabots_server:{id:"medabots_server:flame_tisara_sala_head",gender:1b,move:"melt",part:"head",armor:95,power:33,uses:6,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=9,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:38,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisara_sala_hand"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.flame_tisara"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.flame_tisara_sala_hand.model"}']},medabots_server:{id:"medabots_server:flame_tisara_sala_hand",gender:1b,move:"melt",part:"right_arm",armor:60,power:33,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=10,Time=60..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_breathfire"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_breathfire.model"}']},medabots_server:{id:"medabots_server:attack_tyrano_breathfire",gender:0b,move:"melt",part:"head",armor:70,power:17,uses:7,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=11,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:53,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sphere_doomers_fire_doomer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.neutral"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sphere_doomers"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sphere_doomers_fire_doomer.model"}']},medabots_server:{id:"medabots_server:sphere_doomers_fire_doomer",gender:2b,move:"melt",part:"left_arm",armor:40,power:30,activated:1b,version:1}}

# Finish the move
scoreboard players reset @s[scores={Melt=1,Time=60..},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] Melt
scoreboard players reset @s[scores={Melt=3,Time=60..},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] Melt
scoreboard players reset @s[scores={Melt=2,Time=60..},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"head"}}}]}] Melt
scoreboard players reset @s[scores={Melt=1..,Time=60..},type=!minecraft:player] Melt
execute unless entity @s[scores={Melt=1..}] run scoreboard players reset @s MedapartType
execute unless entity @s[scores={Melt=1..}] run scoreboard players set @s Time 0

# Increase time by 1
scoreboard players add @s[scores={Melt=1..}] Time 1

# Allow dealing damage
effect clear @s minecraft:weakness

# Attacked by melee trap
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] if entity @s[scores={Death=1..},type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run tag @s[scores={Death=1..}] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team]
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run effect give @s[type=!#medabots_server:undead,tag=!ally_medabot] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run effect give @s[type=#medabots_server:undead,tag=!ally_medabot] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[scores={Death=1..},type=minecraft:player,tag=!ally_medabot] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run tag @s[scores={Death=1..},tag=!ally_medabot] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[tag=!ally_medabot] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team]
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run effect give @s[type=!#medabots_server:undead,tag=!enemy_medabot] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run effect give @s[type=#medabots_server:undead,tag=!enemy_medabot] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[scores={Death=1..},type=minecraft:player,tag=!enemy_medabot] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run tag @s[scores={Death=1..},tag=!enemy_medabot] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[tag=!enemy_medabot] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team]