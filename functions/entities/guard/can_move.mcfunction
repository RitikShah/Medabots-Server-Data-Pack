execute if block ^ ^ ^0.4 minecraft:air if block ^ ^1 ^0.4 minecraft:air unless block ^ ^-1 ^0.4 minecraft:air unless block ^ ^-1 ^0.4 minecraft:lava run tag @s add can_move
execute if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] if block ^ ^1 ^0.4 minecraft:air if block ^ ^2 ^0.4 minecraft:air if block ^ ^2 ^ minecraft:air run tag @s add can_move
execute if block ^ ^ ^0.4 minecraft:air if block ^ ^1 ^0.4 minecraft:air if block ^ ^-1 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:water unless block ^ ^-2 ^0.4 minecraft:lava run tag @s add can_move
execute if block ^ ^ ^0.4 minecraft:comparator if block ^ ^1 ^0.4 minecraft:air unless block ^ ^-1 ^0.4 minecraft:air unless block ^ ^-1 ^0.4 minecraft:lava run tag @s add can_move
execute if block ^ ^ ^0.4 #minecraft:slabs[type=bottom] if block ^ ^1 ^0.4 minecraft:air if block ^ ^2 ^0.4 minecraft:air if block ^ ^2 ^ minecraft:air run tag @s add can_move
execute if block ^ ^ ^0.4 minecraft:comparator if block ^ ^1 ^0.4 minecraft:air if block ^ ^-1 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:water unless block ^ ^-2 ^0.4 minecraft:lava run tag @s add can_move

execute if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^0.5 ^0.4 minecraft:air if block ^ ^1.5 ^0.4 minecraft:air unless block ^ ^-1.5 ^0.4 minecraft:air unless block ^ ^-1 ^0.4 minecraft:lava run tag @s add can_move
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^0.5 ^0.4 #minecraft:slabs[type=bottom] if block ^ ^1.5 ^0.4 minecraft:air if block ^ ^2.5 ^0.4 minecraft:air run tag @s add can_move
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^0.5 ^0.4 minecraft:air if block ^ ^1.5 ^0.4 minecraft:air if block ^ ^-1.5 ^0.4 minecraft:air unless block ^ ^-2.5 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:water unless block ^ ^-2 ^0.4 minecraft:lava run tag @s add can_move
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^0.5 ^0.4 minecraft:comparator if block ^ ^1.5 ^0.4 minecraft:air unless block ^ ^-1.5 ^0.4 minecraft:air unless block ^ ^-1 ^0.4 minecraft:lava run tag @s add can_move
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^0.5 ^0.4 #minecraft:slabs[type=bottom] if block ^ ^1.5 ^0.4 minecraft:air if block ^ ^2.5 ^0.4 minecraft:air run tag @s add can_move
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^0.5 ^0.4 minecraft:comparator if block ^ ^1.5 ^0.4 minecraft:air if block ^ ^-1.5 ^0.4 minecraft:air unless block ^ ^-2.5 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:water unless block ^ ^-2 ^0.4 minecraft:lava run tag @s add can_move

execute if entity @s[tag=can_move] if block ^ ^-1 ^0.4 minecraft:water if block ^ ^-2 ^0.4 minecraft:water run tag @s remove can_move
execute if entity @s[tag=can_move] if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ^ ^-1.5 ^0.4 minecraft:water if block ^ ^-2.5 ^0.4 minecraft:water run tag @s remove can_move
