advancement grant @s[tag=!returner] only medabots_server:wave_1/root
execute if entity @s[tag=returner] run function medabots_server:other/log_on
scoreboard players set @s Verified 3
scoreboard players set @s Music 0
scoreboard players set @s Dialog 0
effect clear @s minecraft:resistance