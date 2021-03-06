# Check if the block at the feet is not valid
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~-1 #medabots_server:edge_grab/no_holding run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~-1 #medabots_server:edge_grab/trapdoors[open=false] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~-1 #medabots_server:edge_grab/trapdoors[open=true,facing=north] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~-1 #medabots_server:edge_grab/trapdoors[open=true,facing=east] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~-1 #medabots_server:edge_grab/trapdoors[open=true,facing=west] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~-1 minecraft:snow[layers=5] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~-1 minecraft:snow[layers=4] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~-1 minecraft:snow[layers=3] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~-1 minecraft:snow[layers=2] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~-1 minecraft:snow[layers=1] run scoreboard players set @s EdgeGrabAble 0

# Check if the block at the head is not valid
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 #medabots_server:edge_grab/no_looking run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 #medabots_server:edge_grab/stairs[facing=south,shape=straight] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 #medabots_server:edge_grab/stairs[facing=south,shape=inner_left] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 #medabots_server:edge_grab/stairs[facing=south,shape=inner_right] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 #medabots_server:edge_grab/stairs[facing=east,shape=inner_right] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 #medabots_server:edge_grab/stairs[facing=west,shape=inner_left] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 minecraft:piston_head[facing=south] run scoreboard players set @s EdgeGrabAble 0

# Check if the block at the head is valid
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 #medabots_server:edge_grab/looking run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 #medabots_server:edge_grab/slabs[type=bottom] run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 #medabots_server:edge_grab/slabs[type=top] run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 #medabots_server:edge_grab/doors[half=upper] run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 minecraft:snow[layers=1] run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 minecraft:snow[layers=2] run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~-1 minecraft:snow[layers=3] run scoreboard players set @s EdgeGrabAble 2