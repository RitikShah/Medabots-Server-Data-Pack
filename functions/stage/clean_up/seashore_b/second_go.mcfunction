bossbar set medabots_server:seashore_b/time players
bossbar set medabots_server:seashore_b/robattle players
scoreboard players set @a[scores={Stage=13}] Music 0
scoreboard players set @a[scores={Stage=13}] MusicType 1
scoreboard players set @a[scores={Stage=13}] Battle 0
teleport @a[scores={Stage=13}] -1715 51 -396 -180 0
tag @e[scores={Stage=13},type=!minecraft:player] add dead
data merge block -1716 52 -442 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/seashore_b/play"}}'}
setblock -1716 53 -444 minecraft:redstone_block