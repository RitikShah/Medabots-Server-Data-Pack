# Spawn the footsool
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.footstool"}',Duration:11,Tags:["footstool"]}

# Give the jumper effects
effect give @s minecraft:resistance 1 9 true
effect give @s minecraft:jump_boost 1 4 true

# Play the sound
playsound medabots_server:entity.medabot.move.footstool player @a ~ ~ ~ 1