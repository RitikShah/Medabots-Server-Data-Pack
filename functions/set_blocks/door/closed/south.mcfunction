summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.door"}',Tags:["door"],Duration:2147483647}
setblock ~ ~ ~ minecraft:iron_door[facing=north,open=false,hinge=left,half=lower]
setblock ~ ~1 ~ minecraft:iron_door[facing=north,open=false,hinge=left,half=upper]
setblock ~1 ~ ~ minecraft:iron_door[facing=north,open=false,hinge=right,half=lower]
setblock ~1 ~1 ~ minecraft:iron_door[facing=north,open=false,hinge=right,half=upper]
fill ~ ~2 ~ ~1 ~3 ~ minecraft:barrier