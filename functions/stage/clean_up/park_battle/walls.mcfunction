fill -1942 45 -569 -1941 48 -569 minecraft:air
fill -1938 45 -573 -1937 48 -573 minecraft:air
fill -1934 45 -569 -1933 48 -569 minecraft:air
fill -1927 45 -572 -1927 48 -571 minecraft:air
fill -1927 45 -576 -1927 48 -575 minecraft:air
fill -1930 45 -586 -1929 48 -586 minecraft:air
fill -1934 45 -582 -1933 48 -582 minecraft:air
fill -1938 45 -586 -1937 48 -586 minecraft:air
fill -1942 45 -586 -1941 48 -586 minecraft:air
fill -1944 45 -580 -1944 48 -579 minecraft:air
fill -1940 45 -575 -1940 48 -576 minecraft:air
fill -1938 45 -582 -1937 48 -582 minecraft:air
fill -1931 45 -580 -1931 48 -579 minecraft:air
fill -1934 45 -573 -1933 48 -573 minecraft:air
fill -1947 45 -568 -1947 48 -568 minecraft:air
fill -1946 45 -567 -1946 48 -567 minecraft:air
fill -1945 45 -566 -1945 48 -566 minecraft:air
fill -1973 45 -589 -1924 45 -540 minecraft:grass_block replace minecraft:dirt
scoreboard players set @a[scores={Stage=50}] Music 0
scoreboard players set @a[scores={Stage=50}] MusicType 1
scoreboard players set @a[scores={Stage=50}] Battle 0
teleport @a[scores={Stage=50}] -1949 51 -564 -180 0
tag @e[scores={Stage=50},type=!minecraft:player] add dead
data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_battle/play"}}'}
setblock -1950 53 -591 minecraft:redstone_block