summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.goal_area"}',Tags:["goal_area"],Duration:2147483647}
execute as @e[distance=..0.7] run function medabots_server:blocks/tag_for_replacing_block
setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"medabots_server:stage/goal_area",mode:"LOAD"}
setblock ~ ~ ~ minecraft:redstone_block