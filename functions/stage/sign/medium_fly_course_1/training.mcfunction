execute unless entity @s[tag=racer] run scoreboard players set @s[scores={Dialog=0,Verified=3}] Stage 2
execute unless entity @s[tag=racer] run scoreboard players set @s[scores={Dialog=0,Verified=3}] Rings 0
execute unless entity @s[tag=racer] run scoreboard players set @s[scores={Dialog=0,Verified=3}] RingsTotal 0
execute unless entity @s[tag=racer] run tag @s[scores={Dialog=0,Verified=3}] add training
execute unless entity @s[tag=racer] run teleport @s[scores={Dialog=0,Verified=3}] -160.0 112 -118.0 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
tellraw @s[tag=racer] {"translate":"medabots_server:message.stage.fly_course.cant_leave","color":"green"}
execute unless entity @s[tag=racer] run scoreboard players set @s[scores={Dialog=0,Verified=3}] FlyCourse 1