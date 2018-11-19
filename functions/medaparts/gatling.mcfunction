# Increase time by 1
scoreboard players add @s Time 1

# Set which part is activated
scoreboard players set @s[scores={Time=2,Gatling=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:saikachis_blaster"}}}]}] MedapartType 1
scoreboard players set @s[scores={Time=2,Gatling=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:aimflash_tripod"}}}]}] MedapartType 2
scoreboard players set @s[scores={Time=2,Gatling=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:sailor_multi_pateri_vulcan"}}}]}] MedapartType 3
scoreboard players set @s[scores={Time=2,Gatling=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:blackbeetle_blackblaster"}}}]}] MedapartType 4
scoreboard players set @s[scores={Time=2,Gatling=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:arcbeetle_ignition"}}}]}] MedapartType 5
scoreboard players set @s[scores={Time=2,Gatling=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:zant_zant_helmet"}}}]}] MedapartType 6
scoreboard players set @s[scores={Time=2,Gatling=3},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:magolor_darkhand"}}}]}] MedapartType 7
scoreboard players set @s[scores={Time=2,Gatling=3},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:warbonnet_range_shooter"}}}]}] MedapartType 8
scoreboard players set @s[scores={Time=2,Gatling=3},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:metabee_sub_machie_gun"}}}]}] MedapartType 9

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Gatling=1}] Time 19
scoreboard players set @s[scores={Time=3,Gatling=3}] Time 27

# Give the weapon and ammo depending on charge
replaceitem entity @s[scores={Gatling=1,Time=32..34,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.shoot\"}"]},medabots_server:{id:"medabots_server:gatling"}}
replaceitem entity @s[scores={Gatling=3,Time=32..34,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.shoot\"}"]},medabots_server:{id:"medabots_server:gatling"}}
replaceitem entity @s[scores={Gatling=2,Time=32..34,Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.shoot\"}"]},medabots_server:{id:"medabots_server:gatling"}}
replaceitem entity @s[scores={Gatling=2,Time=32..34},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.shoot\"}"]},medabots_server:{id:"medabots_server:gatling"}}
replaceitem entity @s[scores={Charge=0..7,Time=32}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.bullet\"}"},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 3
replaceitem entity @s[scores={Charge=8..14,Time=32}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.bullet\"}"},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 4
replaceitem entity @s[scores={Charge=15..21,Time=32}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.bullet\"}"},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 5
replaceitem entity @s[scores={Charge=22..28,Time=32}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.bullet\"}"},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 6
replaceitem entity @s[scores={Charge=29..35,Time=32}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.bullet\"}"},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 7
replaceitem entity @s[scores={Charge=36..42,Time=32}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.bullet\"}"},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 8
replaceitem entity @s[scores={Charge=43..49,Time=32}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.bullet\"}"},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 9
replaceitem entity @s[scores={Charge=50..50,Time=32}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.bullet\"}"},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 10

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Gatling=2,Time=32}] HeadUses 1

# Remove the weapon
clear @s[scores={Time=136}] minecraft:tipped_arrow{medabots_server:{id:"medabots_server:bullet"}}
clear @s[scores={Time=136}] minecraft:bow{medabots_server:{id:"medabots_server:gatling"}}
replaceitem entity @s[scores={Time=136},type=!minecraft:player] weapon.offhand minecraft:air
replaceitem entity @s[scores={Time=136},type=!minecraft:player] weapon.mainhand minecraft:air

# Give back the original part
replaceitem entity @s[scores={MedapartType=1,Time=138..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.saikachis_blaster\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"45\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.saikachis\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.saikachis_blaster.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.saikachis_blaster.model\"}"]},medabots_server:{id:"medabots_server:saikachis_blaster",gender:0b,move:"gatling",part:"left_arm",armor:45,power:26,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=2,Time=138..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.aimflash_tripod\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"45\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.aimflash\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.aimflash_tripod.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.aimflash_tripod.model\"}"]},medabots_server:{id:"medabots_server:aimflash_tripod",gender:0b,move:"gatling",part:"left_arm",armor:45,power:20,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=3,Time=138..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:7,Unbreakable:1b,HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.sailor_multi_pateri_vulcan\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"35\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.female\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.sailor_multi\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.sailor_multi_pateri_vulcan.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.sailor_multi_pateri_vulcan.model\"}"]},medabots_server:{id:"medabots_server:sailor_multi_pateri_vulcan",gender:1b,move:"gatling",part:"right_arm",armor:35,power:20,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=4,Time=138..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:6,Unbreakable:1b,HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.blackbeetle_blackblaster\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"35\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.female\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.blackbeetle\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.blackbeetle_blackblaster.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.blackbeetle_blackblaster.model\"}"]},medabots_server:{id:"medabots_server:blackbeetle_blackblaster",gender:1b,move:"gatling",part:"left_arm",armor:35,power:28,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=5,Time=138..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.arcbeetle_ignition\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"50\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.arcbeetle\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.arcbeetle_ignition.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.arcbeetle_ignition.model\"}"]},medabots_server:{id:"medabots_server:arcbeetle_ignition",gender:0b,move:"gatling",part:"left_arm",armor:50,power:20,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=6,Time=138..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.zant_zant_helmet\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.more\",\"with\":[{\"text\":\"11\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"60\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.zant\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.zant_zant_helmet.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.zant_zant_helmet.model\"}"]},medabots_server:{id:"medabots_server:zant_zant_helmet",gender:0b,move:"gatling",part:"head",armor:60,power:35,uses:11,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=7,Time=138..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.magolor_darkhand\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"30\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.magolor\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.magolor_darkhand.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.magolor_darkhand.model\"}"]},medabots_server:{id:"medabots_server:magolor_darkhand",gender:0b,move:"gatling",part:"left_arm",armor:30,power:22,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=8,Time=138..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.warbonnet_range_shooter\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"30\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.warbonnet\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.warbonnet_range_shooter.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.warbonnet_range_shooter.model\"}"]},medabots_server:{id:"medabots_server:warbonnet_range_shooter",gender:0b,move:"gatling",part:"left_arm",armor:30,power:17,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=9,Time=138..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.metabee_sub_machine_gun\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.gatling.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.uses.infinite\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.armor\",\"with\":[{\"text\":\"30\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.male\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:entity.metabee\"}","","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.metabee_sub_machine_gun.quote\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.metabee_sub_machine_gun.model\"}"]},medabots_server:{id:"medabots_server:metabee_sub_machine_gun",gender:0b,move:"gatling",part:"left_arm",armor:30,power:25,activated:1b,version:1}}

# Finish move
scoreboard players reset @s[scores={Gatling=1,Time=138..},nbt={Inventory:[{Slot:1b,id:"minecraft:fishing_rod",tag:{Damage:2,Unbreakable:1b}}]}] Gatling
scoreboard players reset @s[scores={Gatling=3,Time=138..},nbt={Inventory:[{Slot:2b,id:"minecraft:fishing_rod",tag:{Damage:3,Unbreakable:1b}}]}] Gatling
scoreboard players reset @s[scores={Gatling=2,Time=138..},nbt={Inventory:[{Slot:3b,id:"minecraft:fishing_rod",tag:{Damage:4,Unbreakable:1b}}]}] Gatling
scoreboard players reset @s[scores={Gatling=1,Time=138..},nbt={Inventory:[{Slot:1b,id:"minecraft:fishing_rod",tag:{Damage:6,Unbreakable:1b}}]}] Gatling
scoreboard players reset @s[scores={Gatling=3,Time=138..},nbt={Inventory:[{Slot:2b,id:"minecraft:fishing_rod",tag:{Damage:7,Unbreakable:1b}}]}] Gatling
scoreboard players reset @s[scores={Gatling=2,Time=138..},nbt={Inventory:[{Slot:3b,id:"minecraft:fishing_rod",tag:{Damage:8,Unbreakable:1b}}]}] Gatling
scoreboard players reset @s[scores={Gatling=1,Time=138..},nbt={Inventory:[{Slot:1b,id:"minecraft:fishing_rod",tag:{Damage:10,Unbreakable:1b}}]}] Gatling
scoreboard players reset @s[scores={Gatling=3,Time=138..},nbt={Inventory:[{Slot:2b,id:"minecraft:fishing_rod",tag:{Damage:11,Unbreakable:1b}}]}] Gatling
scoreboard players reset @s[scores={Gatling=2,Time=138..},nbt={Inventory:[{Slot:3b,id:"minecraft:fishing_rod",tag:{Damage:12,Unbreakable:1b}}]}] Gatling
scoreboard players reset @s[scores={Gatling=1..,Time=138..},type=!minecraft:player] Gatling
execute unless entity @s[scores={Gatling=1..}] run scoreboard players reset @s MedapartType
execute unless entity @s[scores={Gatling=1..}] run scoreboard players set @s Time 1

# Attacked by shooting trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap] if entity @s[scores={Death=1..},type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.shooting_trap","with":[{"selector":"@s"}]}
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap] run tag @s[scores={Death=1..}] add had_death
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap]