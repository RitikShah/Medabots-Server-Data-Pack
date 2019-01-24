# Prevent money from jumping away
data merge entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:medallar_cent"}}}},tag=!do_not_teleport,nbt=!{Thrower:{}}] {Motion:[0.0d,0.0d,0.0d],PickupDelay:0s}

# Give dropped items to the me
execute if entity @a[tag=hostile,distance=..2,sort=nearest,limit=1] run data merge entity @s[tag=!do_not_teleport] {PickupDelay:0s}
execute unless entity @a[tag=hostile,distance=..2,sort=nearest,limit=1] run data merge entity @s[tag=!do_not_teleport] {PickupDelay:40s}
execute if entity @s[scores={Time=60},nbt={Owner:{}}] run function medabots_server:other/replace_item
data modify entity @s[nbt={Thrower:{}},nbt=!{Owner:{}}] Owner merge from entity @s Thrower
execute at @a[tag=hostile,distance=..2,sort=nearest,limit=1] run teleport @s[tag=!do_not_teleport] ~ ~ ~
tag @s add do_not_teleport
scoreboard players add @s[scores={Time=..59}] Time 1
execute unless entity @s[scores={Time=0..}] run scoreboard players add @s Time 1