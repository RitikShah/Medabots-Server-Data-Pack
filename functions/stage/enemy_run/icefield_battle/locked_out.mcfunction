execute store result score @s BattlingMedabots if entity @e[scores={Stage=48,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/icefield_battle/balloon_bombs
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1999 51 -608 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
teleport @s[scores={BattlingMedabots=1}] -1999 51 -608 -180 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots