summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_5","enabled"],Duration:2147483647}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[distance=..0.7] run function medabots_server:blocks/tag_for_replacing_block
scoreboard players add @e[distance=..0.7] Time 20
setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=false]
setblock ~ ~2 ~ minecraft:stone_button[face=floor,facing=south]