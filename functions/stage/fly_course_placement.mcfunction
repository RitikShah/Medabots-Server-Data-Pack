execute if score @s RingsTotal < @a[distance=..0.1,limit=1,tag=!me] RingsTotal run scoreboard players add @s FlyCoursePlace 1
execute if entity @s[tag=lap_race] if score @s RingsTotal = @a[distance=..0.1,limit=1,tag=!me] RingsTotal if score @s FlyTime > @a[distance=..0.1,limit=1,tag=!me] FlyTime run scoreboard players add @s FlyCoursePlace 1
execute if entity @a[distance=..0.1,limit=1,scores={FlyCourse=0..2},tag=!me] run tag @s add still_racers