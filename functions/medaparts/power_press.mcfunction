# Tag the attack
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:power_press"}}}}] add power_press
data merge entity @s[tag=power_press] {NoGravity:1b,Tags:["hostile","do_not_teleport","power_pressed"],PickupDelay:32767s,Age:3600s}

# Summon purple mass
execute if entity @s[tag=power_pressed] run summon minecraft:armor_stand ~ ~-1.3 ~ {Invisible:1b,CustomName:"{\"translate\":\"medabots_server:move.ghost\"}",NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:purple_wool",Count:1b}],Marker:1b,Tags:["LifeTime"]}

# Damage enemies that come close, only remove this if the enemy is deep in the range
execute if entity @s[tag=power_pressed] as @e[tag=!power_press,distance=..2] run tag @s[tag=hostile] add power_press
tag @a[tag=power_press,scores={Medaforce=-5}] remove power_press
execute as @e[tag=power_press] run effect give @s[tag=!undead] minecraft:instant_damage 1 3 false
execute as @e[tag=power_press] run effect give @s[tag=undead] minecraft:instant_health 1 3 false
execute as @e[tag=power_press] run kill @e[type=minecraft:item,tag=power_pressed,distance=..1]
tag @e[tag=power_press] remove power_press