summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.round_stone"}',Tags:["round_stone","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:diorite"},NoGravity:1b,Tags:["round_stone","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["round_stone","hostile","killerable"]}]}
scoreboard players set @e[distance=..0.1,tag=round_stone] Moving 1