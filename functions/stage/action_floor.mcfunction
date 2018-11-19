# Tags new action floors with what block they'll replace
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:air run tag @s add air
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:water run tag @s add water
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:grass_block run tag @s add grass_block
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:cobblestone run tag @s add cobblestone
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:coarse_dirt run tag @s add coarse_dirt
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:sand run tag @s add sand
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:packed_ice run tag @s add packed_ice
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:stone_slab run tag @s add stone_slab
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:snow_block run tag @s add snow_block
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:oak_planks run tag @s add oak_planks
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:orange_terracotta run tag @s add orange_terracotta
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:polished_granite run tag @s add polished_granite
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:red_wool run tag @s add red_wool
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:quartz_block run tag @s add quartz_block
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:terracotta run tag @s add terracotta
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:red_nether_bricks run tag @s add red_nether_bricks
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:iron_block run tag @s add iron_block
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=north] run tag @s add black_glazed_terracotta_north
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=south] run tag @s add black_glazed_terracotta_south
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=east] run tag @s add black_glazed_terracotta_east
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=west] run tag @s add black_glazed_terracotta_west
# Delete this
execute unless entity @s[scores={Time=-100..}] if block ~ ~-1 ~ minecraft:stone_bricks run tag @s add stone_bricks
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:cyan_terracotta run tag @s add cyan_terracotta

# New action floor needs a new scores
execute unless entity @s[scores={Time=-100..}] run scoreboard players operation @s ActionFloorNr > @e[tag=action_floor] ActionFloorNr
execute unless entity @s[scores={Time=-100..}] run scoreboard players add @s ActionFloorNr 1
execute unless entity @s[scores={Time=-100..}] run setblock ~ ~-1 ~ minecraft:white_wool
execute unless entity @s[scores={Time=-100..}] run scoreboard players set @s Time -80

# Only activate when nothing's on top, and the current entity's gone
execute unless entity @e[distance=..0.7,tag=!action_floor,type=!minecraft:item] if block ~ ~ ~ minecraft:air as @e[tag=!action_floor] if score @s ActionFloorNr = @e[distance=..0.1,tag=action_floor,limit=1] ActionFloorNr run scoreboard players set @e[distance=..0.1,tag=action_floor,limit=1,scores={Time=0},tag=enabled] Time -1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s[scores={Time=0}] Time -1
execute if entity @e[distance=..0.7,tag=!action_floor,type=!minecraft:item] run scoreboard players set @s[scores={Time=0}] Time -1
scoreboard players set @s[scores={Time=0},tag=!enabled] Time -1
scoreboard players add @s[scores={Time=0..}] Time 1
scoreboard players add @s[scores={Time=..-1}] Time 1

# Sound!
execute if entity @s[scores={Time=1}] run playsound medabots_server:block.action_floor block @a ~ ~ ~ 1

# Show a glow
execute if entity @s[scores={Time=1}] run setblock ~ ~ ~ minecraft:snow[layers=4]
execute if entity @s[scores={Time=1}] run setblock ~ ~1 ~ minecraft:barrier

# Guard
execute if entity @s[scores={Time=50},tag=guard] run summon minecraft:creeper ~ ~-1.4 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","no_processing"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if entity @s[scores={Time=100},tag=guard] as @e[distance=..0.7,type=minecraft:creeper,tag=guard] run data merge entity @s {Invulnerable:0b,NoAI:0b}
execute if entity @s[scores={Time=100},tag=guard] run scoreboard players operation @e[distance=..0.7,type=minecraft:creeper,tag=guard] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=guard] run tag @e[distance=..0.7,type=minecraft:creeper,tag=guard] remove no_processing

# Cannon
execute if entity @s[scores={Time=50},tag=cannon,tag=look_over_x_negative] run summon minecraft:zombie ~ ~-1.3 ~ {Invulnerable:1b,NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",Tags:["hostile","killerable","cannon","looking_over_x_negative","no_processing"],Rotation:[90.0f,0.0f],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if entity @s[scores={Time=50},tag=cannon,tag=look_over_x_positive] run summon minecraft:zombie ~ ~-1.3 ~ {Invulnerable:1b,NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",Tags:["hostile","killerable","cannon","looking_over_x_positive","no_processing"],Rotation:[-90.0f,0.0f],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if entity @s[scores={Time=50},tag=cannon,tag=look_over_z_negative] run summon minecraft:zombie ~ ~-1.3 ~ {Invulnerable:1b,NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",Tags:["hostile","killerable","cannon","looking_over_z_negative","no_processing"],Rotation:[-180.0f,0.0f],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if entity @s[scores={Time=50},tag=cannon,tag=look_over_z_positive] run summon minecraft:zombie ~ ~-1.3 ~ {Invulnerable:1b,NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",Tags:["hostile","killerable","cannon","looking_over_z_positive","no_processing"],Rotation:[0.0f,0.0f],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if entity @s[scores={Time=50},tag=cannon,tag=rotate_over_x_negative] run summon minecraft:zombie ~ ~-1.3 ~ {Invulnerable:1b,NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",Tags:["hostile","killerable","cannon","rotate_over_x_negative","no_processing"],Rotation:[90.0f,0.0f],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if entity @s[scores={Time=50},tag=cannon,tag=rotate_over_x_positive] run summon minecraft:zombie ~ ~-1.3 ~ {Invulnerable:1b,NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",Tags:["hostile","killerable","cannon","rotate_over_x_positive","no_processing"],Rotation:[-90.0f,0.0f],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if entity @s[scores={Time=50},tag=cannon,tag=rotate_over_z_negative] run summon minecraft:zombie ~ ~-1.3 ~ {Invulnerable:1b,NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",Tags:["hostile","killerable","cannon","rotate_over_z_negative","no_processing"],Rotation:[-180.0f,0.0f],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if entity @s[scores={Time=50},tag=cannon,tag=rotate_over_z_positive] run summon minecraft:zombie ~ ~-1.3 ~ {Invulnerable:1b,NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",Tags:["hostile","killerable","cannon","rotate_over_z_positive","no_processing"],Rotation:[0.0f,0.0f],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if entity @s[scores={Time=72},tag=cannon] run setblock ~ ~ ~ minecraft:iron_block
execute if entity @s[scores={Time=72},tag=cannon] run setblock ~ ~2 ~ minecraft:barrier
execute if entity @s[scores={Time=100},tag=cannon] as @e[distance=..0.7,type=minecraft:zombie,tag=cannon] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={Time=100},tag=cannon] run scoreboard players operation @e[distance=..0.7,type=minecraft:zombie,tag=cannon] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=cannon,tag=delay_1] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] add delay_1
execute if entity @s[scores={Time=100},tag=cannon,tag=delay_2] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] add delay_2
execute if entity @s[scores={Time=100},tag=cannon,tag=delay_3] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] add delay_3
execute if entity @s[scores={Time=100},tag=cannon,tag=delay_4] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] add delay_4
execute if entity @s[scores={Time=100},tag=cannon,tag=detect] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] add detect
execute if entity @s[scores={Time=100},tag=cannon] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] remove no_processing

# Ice Block
execute if entity @s[scores={Time=50},tag=ice_block] run summon minecraft:area_effect_cloud ~ ~-1.77 ~ {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable","no_processing"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
execute if entity @s[scores={Time=100},tag=ice_block] run scoreboard players operation @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=ice_block,tag=!moving_1,tag=!moving_2,tag=!moving_3,tag=!moving_4] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] Moving 0
execute if entity @s[scores={Time=100},tag=ice_block,tag=moving_1] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] Moving 1
execute if entity @s[scores={Time=100},tag=ice_block,tag=moving_2] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] Moving 2
execute if entity @s[scores={Time=100},tag=ice_block,tag=moving_3] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] Moving 3
execute if entity @s[scores={Time=100},tag=ice_block,tag=moving_4] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] Moving 4
execute if entity @s[scores={Time=100},tag=ice_block] run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] remove no_processing

# Round Stone
execute if entity @s[scores={Time=50},tag=round_stone] run summon minecraft:area_effect_cloud ~ ~-1.77 ~ {CustomName:"{\"translate\":\"medabots_server:entity.round_stone\"}",Tags:["round_stone","hostile","killerable","no_processing"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:diorite"},NoGravity:1b,Tags:["round_stone","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["round_stone","hostile","killerable"]}]}
execute if entity @s[scores={Time=100},tag=round_stone] run scoreboard players operation @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=round_stone,tag=!moving_1,tag=!moving_2,tag=!moving_3,tag=!moving_4] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] Moving 0
execute if entity @s[scores={Time=100},tag=round_stone,tag=moving_1] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] Moving 1
execute if entity @s[scores={Time=100},tag=round_stone,tag=moving_2] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] Moving 2
execute if entity @s[scores={Time=100},tag=round_stone,tag=moving_3] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] Moving 3
execute if entity @s[scores={Time=100},tag=round_stone,tag=moving_4] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] Moving 4
execute if entity @s[scores={Time=100},tag=round_stone] run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] remove no_processing

# Balloon Bomb
execute if entity @s[scores={Time=100},tag=balloon_bomb] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb","no_processing"],Duration:2147483647}
execute if entity @s[scores={Time=70},tag=balloon_bomb] run setblock ~ ~ ~ minecraft:sponge
execute if entity @s[scores={Time=100},tag=balloon_bomb] run setblock ~ ~ ~ minecraft:air
execute if entity @s[scores={Time=100},tag=balloon_bomb] run scoreboard players operation @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=balloon_bomb] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=balloon_bomb] run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=balloon_bomb] remove no_processing

# Bomb
execute if entity @s[scores={Time=100},tag=bomb] run summon minecraft:tnt ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:600s,Tags:["bomb","hostile","killerable","no_processing"]}
execute if entity @s[scores={Time=70},tag=bomb] run setblock ~ ~ ~ minecraft:tnt
execute if entity @s[scores={Time=100},tag=bomb] run setblock ~ ~ ~ minecraft:air
execute if entity @s[scores={Time=100},tag=bomb,tag=delay_0] as @e[distance=..0.7,type=minecraft:tnt,tag=bomb] run data merge entity @s {Fuse:2s}
execute if entity @s[scores={Time=100},tag=bomb,tag=delay_5] as @e[distance=..0.7,type=minecraft:tnt,tag=bomb] run data merge entity @s {Fuse:100s}
execute if entity @s[scores={Time=100},tag=bomb,tag=delay_10] as @e[distance=..0.7,type=minecraft:tnt,tag=bomb] run data merge entity @s {Fuse:200s}
execute if entity @s[scores={Time=100},tag=bomb] run scoreboard players operation @e[distance=..0.7,type=minecraft:tnt,tag=bomb] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=bomb] run tag @e[distance=..0.7,type=minecraft:tnt,tag=bomb] remove no_processing

# Reset
execute if entity @s[scores={Time=100}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:snow
execute if entity @s[scores={Time=100}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:barrier
scoreboard players set @s[scores={Time=100}] Time -80

# Remove when cleaning up stage
execute if entity @s[tag=dead] run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=dead] run setblock ~ ~1 ~ minecraft:air
execute if entity @s[tag=dead] run setblock ~ ~2 ~ minecraft:air
execute if entity @s[tag=dead,tag=air] run setblock ~ ~-1 ~ minecraft:air
execute if entity @s[tag=dead,tag=water] run setblock ~ ~-1 ~ minecraft:water
execute if entity @s[tag=dead,tag=grass_block] run setblock ~ ~-1 ~ minecraft:grass_block
execute if entity @s[tag=dead,tag=cobblestone] run setblock ~ ~-1 ~ minecraft:cobblestone
execute if entity @s[tag=dead,tag=coarse_dirt] run setblock ~ ~-1 ~ minecraft:coarse_dirt
execute if entity @s[tag=dead,tag=sand] run setblock ~ ~-1 ~ minecraft:sand
execute if entity @s[tag=dead,tag=packed_ice] run setblock ~ ~-1 ~ minecraft:packed_ice
execute if entity @s[tag=dead,tag=stone_slab] run setblock ~ ~-1 ~ minecraft:stone_slab[type=double]
execute if entity @s[tag=dead,tag=oak_planks] run setblock ~ ~-1 ~ minecraft:oak_planks
execute if entity @s[tag=dead,tag=snow_block] run setblock ~ ~-1 ~ minecraft:snow_block
execute if entity @s[tag=dead,tag=orange_terracotta] run setblock ~ ~-1 ~ minecraft:orange_terracotta
execute if entity @s[tag=dead,tag=polished_granite] run setblock ~ ~-1 ~ minecraft:polished_granite
execute if entity @s[tag=dead,tag=red_wool] run setblock ~ ~-1 ~ minecraft:red_wool
execute if entity @s[tag=dead,tag=quartz_block] run setblock ~ ~-1 ~ minecraft:quartz_block
execute if entity @s[tag=dead,tag=terracotta] run setblock ~ ~-1 ~ minecraft:terracotta
execute if entity @s[tag=dead,tag=smooth_red_sandstone] run setblock ~ ~-1 ~ minecraft:smooth_red_sandstone
execute if entity @s[tag=dead,tag=red_nether_bricks] run setblock ~ ~-1 ~ minecraft:red_nether_bricks
execute if entity @s[tag=dead,tag=iron_block] run setblock ~ ~-1 ~ minecraft:iron_block
execute if entity @s[tag=dead,tag=black_glazed_terracotta_north] run setblock ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=north]
execute if entity @s[tag=dead,tag=black_glazed_terracotta_south] run setblock ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=south]
execute if entity @s[tag=dead,tag=black_glazed_terracotta_east] run setblock ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=east]
execute if entity @s[tag=dead,tag=black_glazed_terracotta_west] run setblock ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=west]
execute if entity @s[tag=dead,tag=stone_bricks] run setblock ~ ~-1 ~ minecraft:stone_bricks
execute if entity @s[tag=dead,tag=cyan_terracotta] run setblock ~ ~-1 ~ minecraft:cyan_terracotta
execute if entity @s[tag=dead] as @e[scores={ActionFloorNr=1..}] if score @s ActionFloorNr > @e[distance=..0.7,tag=action_floor,limit=1] ActionFloorNr run scoreboard players remove @s ActionFloorNr 1
kill @s[tag=dead]