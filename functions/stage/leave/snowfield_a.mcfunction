teleport @s[tag=!enemy_player,tag=!-1] -355 55 13
execute unless entity @s[tag=!enemy_player,tag=!-1] run tellraw @s {"translate":"medabots_server:message.stage.cant_leave"}