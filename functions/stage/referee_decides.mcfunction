# Referee text
scoreboard players add @s[scores={Dialog=194..275}] Dialog 1
execute if entity @s[scores={Dialog=195}] as @a[tag=hostile] if score @s Stage = @e[distance=..0.1,tag=mr_referee,limit=1] Stage run title @s title {"translate":"medabots_server:message.stage.mission.time_is_up","color":"green"}
execute if entity @s[scores={Dialog=195}] as @a[tag=hostile] if score @s Stage = @e[distance=..0.1,tag=mr_referee,limit=1] Stage run playsound medabots_server:entity.mr_referee.time_is_up voice @s ~ ~ ~ 1000
execute if entity @s[scores={Dialog=195..}] as @e[tag=hostile] if score @s Stage = @e[distance=..0.1,tag=mr_referee,limit=1] Stage run scoreboard players set @s[scores={Time=2..}] Time 950
execute if entity @s[scores={Dialog=275}] as @a[tag=hostile,tag=!enemy_medabot] if score @s Stage = @e[distance=..0.1,tag=mr_referee,limit=1] Stage at @e[tag=hostile,tag=enemy_medabot] if score @s Stage = @e[distance=..0.1,tag=enemy_medabot,limit=1] Stage run function medabots_server:stage/referee_decides_decision