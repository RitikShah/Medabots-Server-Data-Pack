summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.drawbridge"}',Tags:["drawbridge","south"],Duration:2147483647}
execute as @e[distance=..0.7] run function medabots_server:blocks/drawbridge/scores