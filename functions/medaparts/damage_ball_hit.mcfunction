effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 false
effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 false
execute at @s run kill @e[distance=..1,tag=damage_ball]