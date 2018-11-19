# Moving speed
scoreboard players add @s[scores={Moving=1}] Time 1
scoreboard players add @s[scores={Moving=2}] Time 2
scoreboard players set @s[scores={Moving=3}] Moving 0
scoreboard players set @s[scores={Moving=-1}] Moving 2
scoreboard players set @s[tag=dead] Moving 0

# Play the sound
execute if entity @s[scores={Time=10},tag=!dead] run playsound medabots_server:block.fan block @a ~ ~ ~ 1

# Move objects depending on the facing
execute if block ~ ~1 ~ minecraft:furnace[facing=north] align xyz run function medabots_server:stage/fan_north
execute if block ~ ~1 ~ minecraft:furnace[facing=south] align xyz run function medabots_server:stage/fan_south
execute if block ~ ~1 ~ minecraft:furnace[facing=east] align xyz run function medabots_server:stage/fan_east
execute if block ~ ~1 ~ minecraft:furnace[facing=west] align xyz run function medabots_server:stage/fan_west

# Remove when cleaning up stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @s[tag=dead]

# Reset the timer
scoreboard players set @s[scores={Time=10}] Time 0

# Change the moving speed
execute if entity @s[scores={Time=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Destroy=1..}] run scoreboard players add @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Destroy=1..}] run scoreboard players add @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Destroy=1..}] run scoreboard players add @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Destroy=1..}] run scoreboard players add @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Press=1..}] run scoreboard players add @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Press=1..}] run scoreboard players add @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Press=1..}] run scoreboard players add @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Press=1..}] run scoreboard players add @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Hammer=1..}] run scoreboard players add @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Hammer=1..}] run scoreboard players add @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Hammer=1..}] run scoreboard players add @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Hammer=1..}] run scoreboard players add @s Moving 1