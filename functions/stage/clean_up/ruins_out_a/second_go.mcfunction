bossbar set medabots_server:ruins_out_a/time players
bossbar set medabots_server:ruins_out_a/robattle players
scoreboard players set @a[scores={Stage=7},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=7},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=7},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=7},tag=enemy_medabot] -1570 51 -284 -180 0
scoreboard players set @s[scores={Stage=7,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=7,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=7,Battle=0}] Battle 0
teleport @s[scores={Stage=7,Battle=0}] -1570 51 -284 -180 0
tag @e[scores={Stage=7},type=!minecraft:player] add dead
data merge block -1571 52 -315 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_a/play"}}'}
setblock -1571 53 -317 minecraft:redstone_block