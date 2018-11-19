# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Hold=1}] Time 19
scoreboard players set @s[scores={Time=3,Hold=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 1 10

# give the effect
execute if entity @s[scores={Time=32}] positioned ^ ^ ^2 as @e[distance=..2] unless entity @s[scores={Time=32,Hold=1..3}] run scoreboard players set @s HoldTime 100

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Hold=2,Time=32}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=34..}] Hold
scoreboard players set @s[scores={Time=34..}] Time 1

# Attacked by melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] if entity @s[scores={Death=1..},type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run tag @s[scores={Death=1..}] add had_death
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap]