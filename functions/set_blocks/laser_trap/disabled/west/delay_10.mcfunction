summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_10"],Duration:2147483647}
setblock ~ ~ ~ minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock ~ ~1 ~ minecraft:redstone_block