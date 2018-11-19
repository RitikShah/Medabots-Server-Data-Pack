# If this tries to swim, it'll die
execute if entity @s[type=!minecraft:item] run function medabots_server:medaparts/swim

# Send a killer message
execute if entity @s[scores={Killer=1..}] run function medabots_server:medaparts/killer

# Stage effects
execute if entity @s[type=!minecraft:item] if block ~ ~ ~ minecraft:comparator run function medabots_server:stage/accelerator
execute if entity @s[tag=hammer_punch_hit] run function medabots_server:stage/hammer_punch_hit

# A CPU
execute if entity @s[tag=enemy_medabot] run function medabots_server:any_cpu