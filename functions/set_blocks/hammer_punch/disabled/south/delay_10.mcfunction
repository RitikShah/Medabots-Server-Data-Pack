summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10"],Duration:2147483647}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock ~ ~1 ~ minecraft:redstone_block