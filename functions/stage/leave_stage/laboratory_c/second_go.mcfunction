teleport @s -1586 50 -597 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1596,y=0,z=-618,dx=22,dy=49,dz=44,tag=!enemy_medabot] run function medabots_server:stage/clean_up/laboratory_c/second_go