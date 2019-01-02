# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Bug=1}] Time 19
scoreboard players set @s[scores={Time=3,Bug=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:enchant ~ ~1 ~ 1 0 1 1 30

# Give the effects
execute if entity @s[scores={Time=32},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2] unless entity @s[scores={Time=32,Bug=1..3}] run scoreboard players set @s BugTime 600
execute if entity @s[scores={Time=32},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2] unless entity @s[scores={Time=32,Bug=1..3}] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=32},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2] unless entity @s[scores={Time=32,Bug=1..3}] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute if entity @s[scores={Time=32},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=!ally_medabot] unless entity @s[scores={Time=32,Bug=1..3}] run scoreboard players set @s BugTime 600
execute if entity @s[scores={Time=32},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=!ally_medabot] unless entity @s[scores={Time=32,Bug=1..3}] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=32},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=!ally_medabot] unless entity @s[scores={Time=32,Bug=1..3}] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute if entity @s[scores={Time=32},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=!enemy_medabot] unless entity @s[scores={Time=32,Bug=1..3}] run scoreboard players set @s BugTime 600
execute if entity @s[scores={Time=32},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=!enemy_medabot] unless entity @s[scores={Time=32,Bug=1..3}] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=32},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=!enemy_medabot] unless entity @s[scores={Time=32,Bug=1..3}] run effect give @s[tag=undead] minecraft:instant_health 1 0 true

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Bug=2,Time=34}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=37..}] Bug
scoreboard players set @s[scores={Time=37..}] Time 1

# Attacked by melee trap
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] if entity @s[scores={Death=1..},type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run tag @s[scores={Death=1..}] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team]
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run effect give @s[tag=!undead,tag=!ally_medabot] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run effect give @s[tag=undead,tag=!ally_medabot] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[scores={Death=1..},type=minecraft:player,tag=!ally_medabot] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run tag @s[scores={Death=1..},tag=!ally_medabot] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[tag=!ally_medabot] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team]
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run effect give @s[tag=!undead,tag=!enemy_medabot] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run effect give @s[tag=undead,tag=!enemy_medabot] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[scores={Death=1..},type=minecraft:player,tag=!enemy_medabot] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run tag @s[scores={Death=1..},tag=!enemy_medabot] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[tag=!enemy_medabot] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team]