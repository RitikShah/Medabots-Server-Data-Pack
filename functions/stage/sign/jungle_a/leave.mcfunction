teleport @s -1673 51 -148 -180 0
data merge block -1674 52 -179 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/jungle_a/play\"}}"}
setblock -1674 53 -181 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1