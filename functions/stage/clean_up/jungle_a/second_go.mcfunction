bossbar set medabots_server:jungle_a/time players
bossbar set medabots_server:jungle_a/robattle players
scoreboard players set @a[scores={Stage=3},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=3},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=3},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=3},tag=enemy_medabot] -1673 51 -148 -180 0
tag @e[scores={Stage=3},type=!minecraft:player] add dead
data merge block -1674 52 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_a/play"}}'}
setblock -1674 53 -181 minecraft:redstone_block