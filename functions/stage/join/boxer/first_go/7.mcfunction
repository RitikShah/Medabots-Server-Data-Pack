tellraw @s[scores={Dialog=0,Error=0}] {"translate":"medabots_server:message.stage.player.final","color":"green","extra":[{"text":" "},{"translate":"medabots_server:message.stage.player.wait","color":"green"}]}
execute if entity @s[scores={Dialog=0,Error=0}] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.boxer","with":[{"text":"A"}]}]}
execute if entity @s[scores={Dialog=0,Error=0}] run data merge block -1889 51 -603 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s[scores={Dialog=0,Error=0}] {\\\"translate\\\":\\\"medabots_server:message.stage.no_pvp_on\\\",\\\"color\\\":\\\"green\\\"}\"}}",Text2:"{\"text\":\" \"}"}
execute if entity @s[scores={Dialog=0,Error=0}] run setblock -1889 52 -605 minecraft:red_wool
execute if entity @s[scores={Dialog=0,Error=0}] run data merge block -1891 51 -603 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s[scores={Dialog=0,Error=0}] {\\\"translate\\\":\\\"medabots_server:message.stage.already_playing\\\",\\\"color\\\":\\\"green\\\"}\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.play.main_player\"}"}
execute if entity @s[scores={Dialog=0,Error=0}] run setblock -1891 52 -605 minecraft:red_wool
tag @s[scores={Dialog=0,Error=0}] add enemy_medabot
tag @s[scores={Dialog=0,Error=0}] add 7
execute if entity @s[scores={Dialog=0,Error=0}] run function medabots_server:stage/create/boxer/first_go
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}