# mission text
scoreboard players add @s[scores={Dialog=81..161}] Dialog 1
execute if entity @s[scores={Dialog=82},tag=!run_until_the_time_is_up] as @a[tag=hostile] if score @s Stage = @e[distance=..0.1,tag=mission,limit=1] Stage run title @s title {"translate":"medabots_server:message.stage.mission.time_is_up","color":"green"}
execute if entity @s[scores={Dialog=82..},tag=!run_until_the_time_is_up] as @e[tag=hostile] if score @s Stage = @e[distance=..0.1,tag=mission,limit=1] Stage run scoreboard players set @s[scores={Time=2..}] Time 950
execute if entity @s[scores={Dialog=162},tag=!run_until_the_time_is_up] as @a[tag=hostile] if score @s Stage = @e[distance=..0.1,tag=mission,limit=1] Stage run scoreboard players set @s Battle 0
execute if entity @s[scores={Dialog=82},tag=run_until_the_time_is_up] as @a[tag=hostile,tag=enemy_medabot] if score @s Stage = @e[distance=..0.1,tag=mission,limit=1] Stage run scoreboard players set @s Battle 0
