teleport @s -1345 51 -127 -180 0
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1376,y=0,z=-205,dx=62,dy=49,dz=86,tag=!enemy_medabot] run function medabots_server:stage/clean_up/lagdou_ruins_4/empty