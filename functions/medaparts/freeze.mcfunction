# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Freeze=1}] Time 19
scoreboard players set @s[scores={Time=3,Freeze=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:enchanted_hit ~ ~1 ~ 1 0 1 1 10
execute if entity @s[scores={Time=34}] run particle minecraft:enchanted_hit ~ ~1 ~ 1 0 1 1 10

# Prevent enemy from moving
execute if entity @s[scores={Time=36}] positioned ^ ^ ^2 as @e[distance=..2] unless entity @s[scores={Time=36,Freeze=1..3}] run effect give @s minecraft:slowness 3 5 false

# Damage enemy
execute if entity @s[scores={Time=36}] positioned ^ ^ ^2 as @e[distance=..2] unless entity @s[scores={Time=36,Freeze=1..3}] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 false
execute if entity @s[scores={Time=36}] positioned ^ ^ ^2 as @e[distance=..2] unless entity @s[scores={Time=36,Freeze=1..3}] run effect give @s[tag=undead] minecraft:instant_health 1 0 false
execute if entity @s[scores={Time=36}] positioned ^ ^ ^2 as @e[distance=..2] unless entity @s[scores={Time=36,Freeze=1..3}] run scoreboard players set @s FreezeTime 60

# Create thin ice
execute if entity @s[scores={Time=36}] rotated 0 ~ positioned ^ ^ ^2 if block ~ ~-1 ~ minecraft:water[level=0] unless block ~ ~ ~ minecraft:water run summon minecraft:area_effect_cloud ~ ~-1 ~ {CustomName:"{\"translate\":\"medabots_server:block.thin_ice\"}",Duration:2147483647,Tags:["thin_ice"]}
execute if entity @s[scores={Time=36}] rotated 0 ~ positioned ^ ^ ^2 if block ~-1 ~-1 ~ minecraft:water[level=0] unless block ~-1 ~ ~ minecraft:water run summon minecraft:area_effect_cloud ~-1 ~-1 ~ {CustomName:"{\"translate\":\"medabots_server:block.thin_ice\"}",Duration:2147483647,Tags:["thin_ice"]}
execute if entity @s[scores={Time=36}] rotated 0 ~ positioned ^ ^ ^2 if block ~1 ~-1 ~ minecraft:water[level=0] unless block ~1 ~ ~ minecraft:water run summon minecraft:area_effect_cloud ~1 ~-1 ~ {CustomName:"{\"translate\":\"medabots_server:block.thin_ice\"}",Duration:2147483647,Tags:["thin_ice"]}
execute if entity @s[scores={Time=36}] rotated 0 ~ positioned ^ ^ ^2 if block ~ ~-1 ~-1 minecraft:water[level=0] unless block ~ ~ ~-1 minecraft:water run summon minecraft:area_effect_cloud ~ ~-1 ~-1 {CustomName:"{\"translate\":\"medabots_server:block.thin_ice\"}",Duration:2147483647,Tags:["thin_ice"]}
execute if entity @s[scores={Time=36}] rotated 0 ~ positioned ^ ^ ^2 if block ~ ~-1 ~1 minecraft:water[level=0] unless block ~ ~ ~1 minecraft:water run summon minecraft:area_effect_cloud ~ ~-1 ~1 {CustomName:"{\"translate\":\"medabots_server:block.thin_ice\"}",Duration:2147483647,Tags:["thin_ice"]}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Freeze=2,Time=36}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=38..}] Freeze
scoreboard players set @s[scores={Time=38..}] Time 1

# Attacked by melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] if entity @s[scores={Death=1..},type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run tag @s[scores={Death=1..}] add had_death
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap]