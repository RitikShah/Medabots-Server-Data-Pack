summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["do_not_teleport","replacement"],PickupDelay:1s}
data modify entity @e[type=minecraft:item,tag=replacement,distance=..0.1,limit=1] Item merge from entity @s Item
kill @s