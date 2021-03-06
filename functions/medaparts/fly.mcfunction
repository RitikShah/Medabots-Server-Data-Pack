# Tag the equipped users
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..},tag=fly_legs,type=!minecraft:player] Fly 2
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]}] Fly 2
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..,Fly=1..},type=!minecraft:player] Fly 2
execute if block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:air if block ~ ~-3 ~ minecraft:air run scoreboard players set @s[tag=hostile,nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]}] Fly 1
execute if block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:air if block ~ ~-3 ~ minecraft:air run scoreboard players set @s[tag=hostile,scores={Fly=1..},type=!minecraft:player] Fly 1

# Fly crash
tag @s[scores={Fly=1,LegsArmor=..0}] remove static_fly
execute if entity @s[scores={Fly=1,LegsArmor=..0}] if block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:air if block ~ ~-3 ~ minecraft:air if block ~ ~-4 ~ minecraft:air run tag @s add no_crash
execute if entity @s[scores={Fly=1,LegsArmor=..0},tag=!no_crash,nbt={OnGround:1b}] run function medabots_server:medaparts/flying_crash
tag @s remove no_crash
scoreboard players set @s[scores={Fly=1..,LegsArmor=..0},nbt={OnGround:1b}] Fly 0

# Fly up
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..},tag=!static_fly,nbt={SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]}] Fly 3
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..,FlyTime=..150},type=!minecraft:player,tag=fly_legs,tag=legs_selected] Fly 3
execute if entity @s[tag=hostile,scores={LegsArmor=1..,Fly=1..2}] run function medabots_server:medaparts/fly_hot_air

# CPU behavior
execute if entity @s[tag=hostile,scores={LegsArmor=1..},tag=fly_legs,type=!minecraft:player] run function medabots_server:medaparts/fly_cpu_behavior

# Limit flying to 8 seconds
scoreboard players set @s[nbt={OnGround:1b}] FlyTime 0
scoreboard players set @s[scores={FlyTime=160}] OverheatingFly 1
scoreboard players set @s[scores={OverheatingFly=1}] Fly 1

# Move up unless outside of y=0-255
execute if entity @s[tag=hostile,scores={Fly=1..,LegsArmor=1..}] run effect give @s minecraft:slow_falling 1 0 true
execute if entity @s[tag=hostile,scores={Fly=3}] if entity @s[y=0,dy=255] run effect give @s minecraft:levitation 1 3 true
execute if entity @s[tag=hostile,scores={Fly=3}] if entity @s[y=255,dy=1] run effect clear @s minecraft:levitation

# Increase and decrease the fly time
scoreboard players add @s[scores={Fly=3},tag=!hot_air] FlyTime 2
scoreboard players remove @s[scores={FlyTime=1..,Fly=3}] FlyTime 1
scoreboard players remove @s[scores={FlyTime=1..,Fly=1..2},tag=!static_fly] FlyTime 1
scoreboard players set @s[scores={FlyTime=0}] OverheatingFly 0
tag @s remove hot_air

# Warn for overheating
title @s[scores={FlyTime=100..160,MedaforceTimer=2,Fly=1..2},tag=!static_fly] title {"translate":"medabots_server:move.overheating","color":"red"}
title @s[scores={FlyTime=100..160,MedaforceTimer=2,Fly=3}] title {"translate":"medabots_server:move.overheating","color":"red"}

# Damage overheating fliers
scoreboard players remove @s[scores={OverheatingFly=1,MedaforceTimer=2}] LegsArmor 1

# Prevent standing on ground
execute unless block ~ ~-0.7 ~ minecraft:air run effect give @s[scores={Fly=1..2}] minecraft:levitation 1 0 true

# No flying if not in battle
scoreboard players set @s[scores={Fly=1..},tag=!hostile] Fly 0

# Instantly fall if not selected
execute if block ~ ~-0.7 ~ minecraft:air run effect clear @s[scores={Fly=..2},tag=!float] minecraft:levitation

# Static floating when used
effect give @s[scores={Fly=1..2},tag=static_fly_move_up] minecraft:levitation 1 2 true
execute if block ~ ~-0.7 ~ minecraft:air run effect clear @s[scores={Fly=1..2},tag=!static_fly_move_up] minecraft:levitation
effect give @s[scores={Fly=1..2,LegsArmor=1..},tag=!static_fly_move_up] minecraft:slow_falling 1 0 true
effect clear @s[scores={Fly=1..2},tag=static_fly_move_up] minecraft:slow_falling

# Switch between levitation and slow falling
tag @s[tag=static_fly_move_up] add static_fly_move_down
tag @s[tag=static_fly_move_down] remove static_fly_move_up
tag @s[tag=static_fly,tag=!static_fly_move_down] add static_fly_move_up
tag @s[tag=static_fly_move_down] remove static_fly_move_down