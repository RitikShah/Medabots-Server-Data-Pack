scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression opening
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
teleport @s[scores={Dialog=1}] -284 55 -53 90 0
teleport @s[scores={Dialog=2..591}] -284 55 -53
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -305 55 -53 {Duration:1000000,Tags:["cutscene","brass"],Rotation:[-90.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-305,y=55,z=-53,distance=..1,tag=brass] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-305,y=55,z=-53,distance=..1,tag=brass] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -305 55 -53 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","brass","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather.model"}']},medabots_server:{id:"medabots_server:sailor_multi_flaregather",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -305 55 -53 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","brass","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot.model"}']},medabots_server:{id:"medabots_server:sailor_multi_short_shot",gender:1b,move:"rifle",part:"left_arm",armor:35,power:24,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -305 55 -53 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","brass","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan.model"}']},medabots_server:{id:"medabots_server:sailor_multi_pateri_vulcan",gender:1b,move:"gatling",part:"right_arm",armor:35,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -305 55 -53 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","brass","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair.model"}']},medabots_server:{id:"medabots_server:sailor_multi_variablehair",gender:1b,move:"scout",part:"head",armor:75,power:50,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -305 55 -53 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=brass] MedabotNr
execute at @s as @e[x=-305,y=55,z=-53,tag=brass,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -284 55 -51 {Duration:1000000,Tags:["cutscene","metabee"],Rotation:[90.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-284,y=55,z=-51,distance=..1,tag=metabee] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-284,y=55,z=-51,distance=..1,tag=metabee] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -284 55 -51 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace.model"}']},medabots_server:{id:"medabots_server:saikachis_enplace",gender:0b,move:"two_legged",part:"legs",armor:50,defense:56,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -284 55 -51 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster.model"}']},medabots_server:{id:"medabots_server:saikachis_blaster",gender:0b,move:"gatling",part:"left_arm",armor:45,power:26,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -284 55 -51 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.model"}']},medabots_server:{id:"medabots_server:saikachis_fuser",gender:0b,move:"rifle",part:"right_arm",armor:45,power:30,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -284 55 -51 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -284 55 -51 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=metabee] MedabotNr
execute at @s as @e[x=-284,y=55,z=-51,tag=metabee,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -305 55 -51 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["erika","cutscene"],Rotation:[-90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6046341}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14574460}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10272473}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"Erika2",Properties:{textures:[{Signature:"mpGErjZa28jt8zB5/0jkQFqsGs/zBUOSvHRxuoa26xdSSDaz99zzLe1maoj27HXV4iQYwn7QZiiee7Y1iE69tjmuv5/SjUxRP3kBANAhy53JcoptJXso9t41cTYN7PMVXXg1qzYnimDv16weV/QJ7+YVPJQl3wNglXxVVsvDhZ3sBvkBMcWkbDTNJZvE/dU8hRDiNlDJiG/VG26B4Eaj8NwidBHqX1YB0ONMRJFC86OAz3yicDNoJQHmm/ReM+2C7oR7FO9NRpnQHN0cQlEAI1PQLi3/Ojr/mVZEkFjkfI2gRfOgTE4AZ25DEZ/IqBEpQYCXp+r/x6Mf2JXJIgvycnNoyRnV8tPnBn+jH5B/go0wHX5XsAaPRhhxiPtTeNThODdtW27S9OF+hxeJ3nsc3Pjw9vCRbJGlzLN6cAesL0D3BnGJ4gFU1WIh4On4aCLlaIL+QuZKz+phkqj8/MsgMRaUuqvoA6ViIcH6jc6NliC32w+hg9YO29Nw/3Y0wIxemU4OMlGb9uM03YyMXzfGlWYJiIgRvmkq+SK2Y7T4fYJoSN/uat7JlGZjPBwJi7KSs8w3vR4aVae6o0daEiEZw/hdYH4UduOemq8QQ3YJ9ItRiokVBVeU4zq6MIEfXYmbF+NxwzTvtKhmnV02+W65vCDrwXZERvc8QWIBiRkZSRg=",Value:"eyJ0aW1lc3RhbXAiOjE1NTU3OTE2Mzg3MzEsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzhjZDM4YWVkZjc4YzdlNjk2ODYyMzRkMjQxODViNjhmYTU0ZWNjZTQzZGQyZjc2ZDZmZWEwYmY4NmM2NDNiOSJ9LCJDQVBFIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2NzdmN2Q5OGFjNzBhNTMzNzEzNTE4NDE2ZGY0NDUyZmU1NzAwMzY1YzA5Y2Y0NWQwZDE1NmVhOTM5NjU1MSJ9fX0="}]},Name:"Erika2"}}}]}
execute at @s as @e[x=-305,y=55,z=-51,tag=erika,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -343 55 -52 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["select_corps","cutscene"],Rotation:[-90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2437407}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13948116}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10473420}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"SelectCorps",Properties:{textures:[{Signature:"dLJPvutuIUDWV7Phd3RMXO4H79KDx7STmgirB6arX9ciVDjChQpz51frdvYM4vMS6hcbBzmJJ5eQlWl2lPDrR38F6xAY1mvlZDGSAC9rd7YzQAqL216tMo73+nwkQf9mb09EtE74399rQwqkBsDJOt/jm3VOJ4OcrMm4jwHfrxkZsNI4172k52pG4ZSmMf96XfjCOPVPddnefbiZw4OWu1qaqqAl6eG5fQyG229Qs/TF6ENODQKMTQMT0zSzwc2BsAWEzSg6MB9ddLflWCNoSOLvciiiSOz9j7aZ9YgcsC8rmz52/HgOGscMcYCQBMnHGOco+0sW4kR0jv4E8JBcqi36ozkl8UH/tdeonnZzP1W4tmSCmCo+rhQDXBauUO+Aw+eUi+ohg4pwy+jpRGpjja379z+TdG+GLlInkdlnWCAL2LIRV5pjdkFfX4umCemMorfUwHMIcJ/yvQg0CB+5IidBi2nvfbeI0W5KYrpMTch9mPSj3xOVTVG8yiygLAig668SZzdP/Z5IThx+ZIB/MHATyKri4WRdvqpQlKJ91dHecTUpQ35MntHW7hok8MaKZ3kkKhabFd88Rfq1j/stHqzr35D+rMIlnbtYp76xXeMmffeLyEgBvZC1tila2tNBFR6MGah0swjmaOe3Ss7nOlZmZfwI0XJJrHKMbsfKqgA=",Value:"eyJ0aW1lc3RhbXAiOjE1NTU3OTIxNTQ2NjYsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTIzOTU1NGZkNjIzZWY3Y2M2OTVkMmYzNjg2ODE5ZTZhMDMzOWJkMTJiNGUxZTliYzMwOWExYjBlZWRhZDhkMiJ9LCJDQVBFIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2NzdmN2Q5OGFjNzBhNTMzNzEzNTE4NDE2ZGY0NDUyZmU1NzAwMzY1YzA5Y2Y0NWQwZDE1NmVhOTM5NjU1MSJ9fX0="}]},Name:"SelectCorps"}}}]}
execute at @s as @e[x=-343,y=55,z=-52,tag=select_corps,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.opening.2"}]}
execute if entity @s[scores={Dialog=40}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=40..129}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~-0.2125 ~ ~
execute if entity @s[scores={Dialog=58}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-0.5 ~
execute if entity @s[scores={Dialog=88}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~0.5 ~
execute if entity @s[scores={Dialog=129}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.3"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.4"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.5"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.6"}]}
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.opening.7"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.8"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.9"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.10"}]}
teleport @s[scores={Dialog=592..681}] ~-0.2125 ~ ~
teleport @s[scores={Dialog=641}] ~ ~0.5 ~
execute if entity @s[scores={Dialog=682}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=682}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -135 0
teleport @s[scores={Dialog=682..2850}] -303 55 -53
tellraw @s[scores={Dialog=682}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.11"}]}
tellraw @s[scores={Dialog=714}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.12","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=746}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.13"}]}
tellraw @s[scores={Dialog=778}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.14"}]}
tellraw @s[scores={Dialog=802}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.15"}]}
tellraw @s[scores={Dialog=834}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.opening.16"}]}
tellraw @s[scores={Dialog=914}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.17"}]}
tellraw @s[scores={Dialog=946}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.18"}]}
tellraw @s[scores={Dialog=978}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.19"}]}
tellraw @s[scores={Dialog=1058}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.20"}]}
tellraw @s[scores={Dialog=1082}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.21"}]}
tellraw @s[scores={Dialog=1162}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.22"}]}
tellraw @s[scores={Dialog=1170}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.23"}]}
tellraw @s[scores={Dialog=1202}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.24"}]}
tellraw @s[scores={Dialog=1218}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.25"}]}
tellraw @s[scores={Dialog=1266}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.26"}]}
tellraw @s[scores={Dialog=1378}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.27"}]}
tellraw @s[scores={Dialog=1410}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.28"}]}
tellraw @s[scores={Dialog=1426}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.29"}]}
tellraw @s[scores={Dialog=1458}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.30"}]}
tellraw @s[scores={Dialog=1522}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.31"}]}
tellraw @s[scores={Dialog=1578}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.32"}]}
tellraw @s[scores={Dialog=1586}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.33"}]}
tellraw @s[scores={Dialog=1666}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.34"}]}
tellraw @s[scores={Dialog=1682}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.35"}]}
tellraw @s[scores={Dialog=1722}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.36"}]}
tellraw @s[scores={Dialog=1738}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.37"}]}
tellraw @s[scores={Dialog=1858}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.38"}]}
tellraw @s[scores={Dialog=1898}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.39"}]}
tellraw @s[scores={Dialog=1914}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.40"}]}
tellraw @s[scores={Dialog=1938}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.41"}]}
tellraw @s[scores={Dialog=2010}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.42"}]}
tellraw @s[scores={Dialog=2042}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.43"}]}
tellraw @s[scores={Dialog=2066}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.44"}]}
tellraw @s[scores={Dialog=2106}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.opening.45"}]}
tellraw @s[scores={Dialog=2130}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.46"}]}
tellraw @s[scores={Dialog=2162}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.47"}]}
tellraw @s[scores={Dialog=2226}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.48"}]}
tellraw @s[scores={Dialog=2242}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.49"}]}
tellraw @s[scores={Dialog=2282}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.opening.50"}]}
tellraw @s[scores={Dialog=2354}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.opening.51"}]}
tellraw @s[scores={Dialog=2394}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.52"}]}
tellraw @s[scores={Dialog=2402}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.53"}]}
tellraw @s[scores={Dialog=2426}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.54"}]}
tellraw @s[scores={Dialog=2458}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.55"}]}
tellraw @s[scores={Dialog=2514}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.56"}]}
tellraw @s[scores={Dialog=2546}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.57"}]}
tellraw @s[scores={Dialog=2626}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.58"}]}
tellraw @s[scores={Dialog=2634}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.59"}]}
tellraw @s[scores={Dialog=2650}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.60"}]}
tellraw @s[scores={Dialog=2706}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.opening.61"}]}
tellraw @s[scores={Dialog=2786}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.62"}]}
tellraw @s[scores={Dialog=2810}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.63"}]}
tellraw @s[scores={Dialog=2850}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.64"}]}
execute if entity @s[scores={Dialog=2858}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=2858}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=2858}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=2859}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=2859..2944}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~-0.2125 ~ ~
execute if entity @s[scores={Dialog=2944}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=2859}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=2859..2944}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~-0.2125 ~ ~
execute if entity @s[scores={Dialog=2944}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=2859..2944}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~-0.2125 ~ ~
teleport @s[scores={Dialog=2859..2944}] ~-0.2125 ~ ~
teleport @s[scores={Dialog=2945..3935}] -321 55 -53
tellraw @s[scores={Dialog=2943}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.65"}]}
tellraw @s[scores={Dialog=2967}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.66"}]}
tellraw @s[scores={Dialog=3015}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.67"}]}
tellraw @s[scores={Dialog=3087}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.68"}]}
tellraw @s[scores={Dialog=3119}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.69"}]}
tellraw @s[scores={Dialog=3199}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.70"}]}
tellraw @s[scores={Dialog=3207}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.71"}]}
tellraw @s[scores={Dialog=3255}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.72"}]}
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=3311}] ~ ~ ~ 1000
tellraw @s[scores={Dialog=3331}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.73"}]}
tellraw @s[scores={Dialog=3357}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.74"}]}
execute if entity @s[scores={Dialog=3363}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -135 0
tellraw @s[scores={Dialog=3363}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.75"}]}
tellraw @s[scores={Dialog=3379}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.76"}]}
tellraw @s[scores={Dialog=3451}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.77"}]}
tellraw @s[scores={Dialog=3483}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.78"}]}
execute if entity @s[scores={Dialog=3363}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
tellraw @s[scores={Dialog=3603}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.79"}]}
execute if entity @s[scores={Dialog=3627}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
tellraw @s[scores={Dialog=3627}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.opening.80"}]}
execute if entity @s[scores={Dialog=3651}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 132 0
execute if entity @s[scores={Dialog=3651}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 130 0
execute if entity @s[scores={Dialog=3652..3842}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3652}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run tag @s add walking
execute if entity @s[scores={Dialog=3652..3842}] as @e[tag=brass,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3842}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run tag @s remove walking
execute if entity @s[scores={Dialog=3843}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s -407 55 -120 0 0
execute if entity @s[scores={Dialog=3843}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s -405 55 -120 0 0
execute if entity @s[scores={Dialog=3711}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
tellraw @s[scores={Dialog=3711}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.81"}]}
tellraw @s[scores={Dialog=3743}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.82"}]}
tellraw @s[scores={Dialog=3823}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.83"}]}
tellraw @s[scores={Dialog=3855}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.84"}]}
tellraw @s[scores={Dialog=3879}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.85"}]}
execute if entity @s[scores={Dialog=3935}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=3936}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=3936..4024}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~-0.2125 ~ ~
execute if entity @s[scores={Dialog=4024}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
teleport @s[scores={Dialog=3936..4024}] ~-0.2125 ~ ~
execute if entity @s[scores={Dialog=4025}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 108 0
teleport @s[scores={Dialog=4025..5164}] -340 55 -53
stopsound @s[scores={Dialog=4025}] music
scoreboard players set @s[scores={Dialog=4025}] Music 70
playsound medabots_server:music.entity.select_corps_intro music @s[scores={Dialog=4025}] ~ ~ ~ 100
tellraw @s[scores={Dialog=4024}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.86"}]}
tellraw @s[scores={Dialog=4060}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.87"}]}
tellraw @s[scores={Dialog=4080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.88"}]}
tellraw @s[scores={Dialog=4152}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.89"}]}
tellraw @s[scores={Dialog=4200}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.90"}]}
tellraw @s[scores={Dialog=4226}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.91"}]}
tellraw @s[scores={Dialog=4256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.92"}]}
tellraw @s[scores={Dialog=4264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.93"}]}
tellraw @s[scores={Dialog=4296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.94"}]}
tellraw @s[scores={Dialog=4328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.95"}]}
tellraw @s[scores={Dialog=4356}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.96"}]}
tellraw @s[scores={Dialog=4436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.97"}]}
tellraw @s[scores={Dialog=4484}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.98"}]}
tellraw @s[scores={Dialog=4524}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.99"}]}
tellraw @s[scores={Dialog=4548}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.100"}]}
tellraw @s[scores={Dialog=4580}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.101","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=4652}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.102"}]}
tellraw @s[scores={Dialog=4732}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.103"}]}
advancement grant @s[scores={Dialog=4756}] only medabots_server:special_items/passes/attendee
tellraw @s[scores={Dialog=4756}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.104"}]}
tellraw @s[scores={Dialog=4764}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.105"}]}
tellraw @s[scores={Dialog=4836}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.106"}]}
execute if entity @s[scores={Dialog=4900}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
tellraw @s[scores={Dialog=4900}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.opening.107","with":[{"selector":"@s"}]}]}
execute if entity @s[scores={Dialog=4950}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 108 0
tellraw @s[scores={Dialog=4940}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.108"}]}
tellraw @s[scores={Dialog=5004}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.109"}]}
tellraw @s[scores={Dialog=5044}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.opening.110"}]}
tellraw @s[scores={Dialog=5092}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.111"}]}
execute if entity @s[scores={Dialog=5164}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s -407 55 -117 -180 0
teleport @s[scores={Dialog=5164}] -405 55 -117 -180 0
teleport @s[scores={Dialog=5165..}] -405 55 -117
stopsound @s[scores={Dialog=5164}] music
scoreboard players set @s[scores={Dialog=5164}] Music 0
tellraw @s[scores={Dialog=5164}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.112"}]}
tellraw @s[scores={Dialog=5180}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.113"}]}
tellraw @s[scores={Dialog=5228}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.114"}]}
tellraw @s[scores={Dialog=5268}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.115"}]}
tellraw @s[scores={Dialog=5276}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.116"}]}
tellraw @s[scores={Dialog=5308}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.opening.117"}]}
tellraw @s[scores={Dialog=5348}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.118"}]}
tellraw @s[scores={Dialog=5372}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.119"}]}
tellraw @s[scores={Dialog=5396}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.opening.120"}]}
execute if entity @s[scores={Dialog=5436}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 70 0
execute if entity @s[scores={Dialog=5436}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 80 0
execute if entity @s[scores={Dialog=5436}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 110 0
execute if entity @s[scores={Dialog=5437..5459}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=5437}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run tag @s add walking
execute if entity @s[scores={Dialog=5437..5459}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=5437}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run tag @s add walking
execute if entity @s[scores={Dialog=5437..5459}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=5460}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=5460}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=5460}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=5461..5472}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=5461..5472}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=5461..5472}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=5444}] run setblock -412 53 -118 minecraft:redstone_block
execute if entity @s[scores={Dialog=5472}] run setblock -412 53 -118 minecraft:air
tag @s[scores={Dialog=5472}] remove dialog_infinity_opening
stopsound @s[scores={Dialog=5472}] music
scoreboard players set @s[scores={Dialog=5472}] MusicType 1
scoreboard players set @s[scores={Dialog=5472}] Music 0
scoreboard players reset @s[scores={Dialog=5472}] DialogNr
scoreboard players set @s[scores={Dialog=5472}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.intro music @s[scores={Music=0,MusicType=-1,Dialog=..4024}] ~ ~ ~ 100
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=..4024}] Music 915
playsound medabots_server:music.entity.select_corps music @s[scores={Music=0,MusicType=-1,Dialog=4025..5163}] ~ ~ ~ 100
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=4081..5163}] Music 720
playsound medabots_server:music.entity.erika music @s[scores={Music=0,MusicType=-1,Dialog=5164..}] ~ ~ ~ 100
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=5164..}] Music 502