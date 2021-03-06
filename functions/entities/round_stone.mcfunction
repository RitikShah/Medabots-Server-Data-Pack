# Push me
execute if entity @s[scores={Moving=0}] run function medabots_server:entities/round_stone/hit

# Remove remains when it dies
execute if block ~ ~ ~ minecraft:lava run tag @s add dead
execute if block ~ ~ ~ minecraft:water run tag @s add dead
execute if block ~1 ~ ~ minecraft:black_wool run tag @s add dead
execute if block ~-1 ~ ~ minecraft:black_wool run tag @s add dead
execute if block ~ ~ ~1 minecraft:black_wool run tag @s add dead
execute if block ~ ~ ~-1 minecraft:black_wool run tag @s add dead

# Prevent jumping over if standing still
fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if entity @s[scores={Moving=0},tag=!dead] run fill ~ ~1 ~ ~ ~1 ~ minecraft:black_stained_glass replace minecraft:air

# Reset if this move is valid
execute if entity @s[scores={Moving=1..}] run function medabots_server:entities/round_stone/valid_move

# Move if this move is valid
scoreboard players set @s[tag=!valid_move,scores={Moving=1..}] Moving 0
execute at @s run teleport @s[scores={Moving=1}] ~0.2 ~ ~
execute at @s run teleport @s[scores={Moving=2}] ~ ~ ~0.2
execute at @s run teleport @s[scores={Moving=3}] ~-0.2 ~ ~
execute at @s run teleport @s[scores={Moving=4}] ~ ~ ~-0.2

# Fall
execute if entity @s[scores={Time=1}] if block ~ ~-0.2 ~ minecraft:air run playsound medabots_server:block.moving_block.fall block @a ~ ~ ~ 1
execute if block ~ ~-0.2 ~ minecraft:air at @s run fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if block ~ ~-0.2 ~ minecraft:water at @s run fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if block ~ ~-0.2 ~ minecraft:lava at @s run fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if block ~ ~-0.2 ~ minecraft:black_carpet at @s run fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if block ~ ~-0.2 ~ minecraft:air at @s run teleport @s ~ ~-0.2 ~
execute if block ~ ~-0.2 ~ minecraft:water at @s run teleport @s ~ ~-0.2 ~
execute if block ~ ~-0.2 ~ minecraft:lava at @s run teleport @s ~ ~-0.2 ~
execute if block ~ ~-0.2 ~ minecraft:black_carpet at @s run teleport @s ~ ~-0.2 ~
execute if entity @s[y=0,dy=1] run tag @s add dead

# Move sound
scoreboard players add @s[scores={Moving=1..}] Time 1
scoreboard players set @s[scores={Moving=0}] Time 0
scoreboard players set @s[scores={Time=20..}] Time 0
execute if entity @s[scores={Time=1}] run playsound medabots_server:block.moving_block.move block @a ~ ~ ~ 1

# Crush enemies
execute if entity @s[scores={Moving=1..}] run function medabots_server:entities/round_stone/crush

# Remove model and collision if dead
execute if entity @s[tag=dead] run function medabots_server:entities/round_stone/death

# Prevent model and collision from rotating
execute as @e[distance=..0.4,tag=round_stone] run data merge entity @s {Rotation:[0.0d,0.0d]}
execute as @e[distance=..0.4,tag=round_stone,type=minecraft:shulker] run effect give @s minecraft:invisibility 1000000 0 true
execute as @e[distance=..0.4,tag=round_stone,type=minecraft:shulker] run data merge entity @s {Invulnerable:1b}
execute as @e[distance=..0.4,tag=round_stone,type=minecraft:falling_block] run data merge entity @s {Time:1,DropItem:0b}

# Position correcion (else it floats above the ground)
execute unless block ~ ~-0.2 ~ minecraft:air unless block ~ ~-0.2 ~ minecraft:water unless block ~ ~-0.2 ~ minecraft:lava at @s positioned ~ ~1 ~ align y run teleport @s ~ ~-0.375 ~
execute if entity @s[scores={Moving=0}] at @s align xz run teleport @s ~0.5 ~ ~0.5
execute unless entity @s[scores={Moving=0..}] run teleport @s ~ ~-0.75 ~
execute unless entity @s[scores={Moving=0..}] run scoreboard players set @s Moving 0

# Refresh clients
data merge entity @s {Air:1}
data merge entity @s {Air:0}