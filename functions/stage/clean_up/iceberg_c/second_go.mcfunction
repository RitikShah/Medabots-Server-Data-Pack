bossbar set medabots_server:iceberg_c/time players
bossbar set medabots_server:iceberg_c/robattle players
scoreboard players set @a[scores={Stage=26},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=26},tag=enemy_medabot] MusicType 22
scoreboard players set @a[scores={Stage=26},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=26},tag=enemy_medabot] -1541 50 -648 -180 0
scoreboard players set @s[scores={Stage=26,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=26,Battle=0}] MusicType 22
scoreboard players set @s[scores={Stage=26,Battle=0}] Battle 0
teleport @s[scores={Stage=26,Battle=0}] -1541 50 -648 -180 0
tag @e[scores={Stage=26},type=!minecraft:player] add dead
data merge block -1542 51 -684 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_c/play"}}'}
setblock -1542 52 -686 minecraft:redstone_block