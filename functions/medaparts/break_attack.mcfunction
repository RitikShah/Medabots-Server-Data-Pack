# Tag the attack
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:break"}}}}] add break
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:break",team:"ally"}}}}] add ally_team
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:break",team:"enemy"}}}}] add enemy_team
data merge entity @s[tag=break] {CustomName:"{\"translate\":\"medabots_server:move.break\"}",Tags:["hostile","do_not_teleport","broken"],PickupDelay:32767s,Age:3600s}

# Spawn black mass
execute if entity @s[tag=broken] run summon minecraft:armor_stand ~ ~-1.3 ~ {Invisible:1b,CustomName:"{\"translate\":\"medabots_server:move.break\"}",NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_wool",Count:1b}],Marker:1b,Tags:["LifeTime"]}

# Damage every entity that gets close
execute if entity @s[tag=broken,tag=!ally_team,tag=!enemy_team] run tag @e[tag=!break,distance=..1,tag=hostile] add break
execute if entity @s[tag=broken,tag=ally_team] run tag @e[tag=!break,distance=..1,tag=hostile,tag=!ally_team] add break
execute if entity @s[tag=broken,tag=enemy_team] run tag @e[tag=!break,distance=..1,tag=hostile,tag=!enemy_team] add break
tag @a[tag=break,scores={break=1..}] remove break
effect give @e[tag=break,tag=!undead] minecraft:instant_damage 1 3 false
effect give @e[tag=break,tag=undead] minecraft:instant_health 1 3 false
execute if entity @e[tag=break] run kill @s
tag @e[tag=break] remove break