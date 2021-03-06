# The small timer so that you can jump on other entities
execute if entity @s[tag=footstool] run function medabots_server:medaparts/footstool_cloud

# Make the anti-tank attack do something
execute if entity @s[tag=anti_tank] run function medabots_server:medaparts/anti_tank_attack

# The small timer so that you can grab ledges
execute if entity @s[tag=edge_grab] run function medabots_server:medaparts/edge_grab_cloud

# Make stage objects do something
execute if entity @s[tag=spring_wall] run function medabots_server:blocks/spring_wall
execute if entity @s[tag=floor_switch] run function medabots_server:blocks/floor_switch
execute if entity @s[tag=mission] run function medabots_server:stage/mission
execute if entity @s[tag=raft] positioned ~ ~0.375 ~ run function medabots_server:entities/raft
execute if entity @s[tag=round_stone,tag=!action_floor] positioned ~ ~0.375 ~ run function medabots_server:entities/round_stone
execute if entity @s[tag=ice_block,tag=!action_floor] positioned ~ ~0.375 ~ run function medabots_server:entities/ice_block
execute if entity @s[tag=thin_ice] run function medabots_server:blocks/thin_ice
execute if entity @s[tag=drawbridge] run function medabots_server:blocks/drawbridge
execute if entity @s[tag=fan] run function medabots_server:blocks/fan
execute if entity @s[tag=action_floor] run function medabots_server:blocks/action_floor
execute if entity @s[tag=balloon_bomb,tag=!action_floor,tag=!pot] run function medabots_server:entities/balloon_bomb
execute if entity @s[tag=press_wall] run function medabots_server:blocks/press_wall
execute if entity @s[tag=laser_trap] run function medabots_server:blocks/laser_trap
execute if entity @s[tag=gas_floor] run function medabots_server:blocks/gas_floor
execute if entity @s[tag=alarm] run function medabots_server:blocks/alarm
execute if entity @s[tag=hammer_punch] run function medabots_server:blocks/hammer_punch
execute if entity @s[tag=hole] run function medabots_server:blocks/hole
execute if entity @s[tag=wall] run function medabots_server:blocks/wall
execute if entity @s[tag=glass] run function medabots_server:blocks/glass
execute if entity @s[tag=pot] run function medabots_server:blocks/pot
execute if entity @s[tag=door] run function medabots_server:blocks/door
execute if entity @s[tag=starting_area] run function medabots_server:blocks/starting_area
execute if entity @s[tag=goal_area] run function medabots_server:blocks/goal_area
execute if entity @s[tag=algae] run function medabots_server:blocks/algae
execute if entity @s[tag=bridge] run function medabots_server:blocks/bridge
execute if entity @s[tag=stone] run function medabots_server:blocks/stone
execute if entity @s[tag=accelerator] run function medabots_server:blocks/accelerator
execute if entity @s[tag=whrilpool] run function medabots_server:blocks/whrilpool