teleport @s -1949 51 -564 -180 0
data merge block -1950 52 -589 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/park_battle/play\"}}"}
setblock -1950 53 -591 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1