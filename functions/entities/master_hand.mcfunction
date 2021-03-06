# Select random attack
scoreboard players set @s[scores={Dialog=60}] Dialog 0
execute unless entity @s[scores={Dialog=0..}] run scoreboard players add @s Dialog 0
execute unless entity @s[scores={Medaforce=1..}] if entity @a[distance=..16] run scoreboard players add @s[scores={Time=1,Dialog=0}] Dialog 1
execute unless entity @s[scores={Medaforce=1..}] run scoreboard players add @s[scores={Dialog=1..59}] Dialog 1
execute if entity @s[scores={Dialog=60},tag=has_crazy_hand] at @e[tag=crazy_hand,tag=main,tag=cooperate] if score @s Stage = @e[distance=..0.1,tag=crazy_hand,sort=nearest,limit=1] Stage run tag @s add cooperate
execute if entity @s[scores={Dialog=60},tag=cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","catch"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","twin_lasers"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","double_jet"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=cooperate] unless entity @s[tag=!2,tag=!3] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","applaud"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=cooperate] unless entity @s[tag=!2,tag=!3] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","double_punch"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=cooperate,tag=4] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","ball_throw"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=cooperate,tag=4] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","crawl_slam"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","jet"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","ram"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","crush"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","lasers"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","gun"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","grab"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","poke"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","punch"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","slap"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","drill"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","walk"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate] unless entity @s[tag=!2,tag=!3] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","sweep"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate,tag=4] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","snap"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate,tag=4] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","wind"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate,tag=4] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","cards"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!cooperate,tag=4] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","spread_fire"],Duration:1}
execute if entity @s[scores={Dialog=60}] run tag @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_select] add success
execute if entity @e[tag=random_select,tag=selected,tag=catch] as @e[tag=crazy_hand,tag=main,tag=cooperate] if score @s Stage = @e[distance=..0.1,tag=master_hand,sort=nearest,limit=1] Stage run tag @s add attack_catch
execute if entity @e[tag=random_select,tag=selected,tag=catch] run tag @s add attack_catch
execute if entity @e[tag=random_select,tag=selected,tag=twin_lasers] as @e[tag=crazy_hand,tag=main,tag=cooperate] if score @s Stage = @e[distance=..0.1,tag=master_hand,sort=nearest,limit=1] Stage run tag @s add attack_lasers
execute if entity @e[tag=random_select,tag=selected,tag=twin_lasers] run tag @s add attack_lasers
execute if entity @e[tag=random_select,tag=selected,tag=double_jet] as @e[tag=crazy_hand,tag=main,tag=cooperate] if score @s Stage = @e[distance=..0.1,tag=master_hand,sort=nearest,limit=1] Stage run tag @s add attack_jet
execute if entity @e[tag=random_select,tag=selected,tag=double_jet] run tag @s add attack_jet
execute if entity @e[tag=random_select,tag=selected,tag=applaud] as @e[tag=crazy_hand,tag=main,tag=cooperate] if score @s Stage = @e[distance=..0.1,tag=master_hand,sort=nearest,limit=1] Stage run tag @s add attack_applaud
execute if entity @e[tag=random_select,tag=selected,tag=applaud] run tag @s add attack_applaud
execute if entity @e[tag=random_select,tag=selected,tag=double_punch] as @e[tag=crazy_hand,tag=main,tag=cooperate] if score @s Stage = @e[distance=..0.1,tag=master_hand,sort=nearest,limit=1] Stage run tag @s add attack_double_punch
execute if entity @e[tag=random_select,tag=selected,tag=double_punch] run tag @s add attack_double_punch
execute if entity @e[tag=random_select,tag=selected,tag=ball_throw] as @e[tag=crazy_hand,tag=main,tag=cooperate] if score @s Stage = @e[distance=..0.1,tag=master_hand,sort=nearest,limit=1] Stage run tag @s add attack_ball_throw
execute if entity @e[tag=random_select,tag=selected,tag=ball_throw] run tag @s add attack_ball_throw
execute if entity @e[tag=random_select,tag=selected,tag=crawl_slam] as @e[tag=crazy_hand,tag=main,tag=cooperate] if score @s Stage = @e[distance=..0.1,tag=master_hand,sort=nearest,limit=1] Stage run tag @s add attack_crawl_slam
execute if entity @e[tag=random_select,tag=selected,tag=crawl_slam] run tag @s add attack_crawl_slam
execute if entity @e[tag=random_select,tag=selected,tag=jet] run tag @s add attack_jet
execute if entity @e[tag=random_select,tag=selected,tag=ram] run tag @s add attack_ram
execute if entity @e[tag=random_select,tag=selected,tag=crush] run tag @s add attack_crush
execute if entity @e[tag=random_select,tag=selected,tag=lasers] run tag @s add attack_lasers
execute if entity @e[tag=random_select,tag=selected,tag=gun] run tag @s add attack_gun
execute if entity @e[tag=random_select,tag=selected,tag=grab] run tag @s add attack_grab
execute if entity @e[tag=random_select,tag=selected,tag=poke] run tag @s add attack_poke
execute if entity @e[tag=random_select,tag=selected,tag=punch] run tag @s add attack_punch
execute if entity @e[tag=random_select,tag=selected,tag=slap] run tag @s add attack_slap
execute if entity @e[tag=random_select,tag=selected,tag=drill] run tag @s add attack_drill
execute if entity @e[tag=random_select,tag=selected,tag=sweep] run tag @s add attack_sweep
execute if entity @e[tag=random_select,tag=selected,tag=walk] run tag @s add attack_walk
execute if entity @e[tag=random_select,tag=selected,tag=snap] run tag @s add attack_snap
execute if entity @e[tag=random_select,tag=selected,tag=wind] run tag @s add attack_wind
execute if entity @e[tag=random_select,tag=selected,tag=cards] run tag @s add attack_cards
execute if entity @e[tag=random_select,tag=selected,tag=spread_fire] run tag @s add attack_spread_fire
kill @e[type=minecraft:area_effect_cloud,tag=random_select]
tag @s remove cooperate

# https://supersmashbros.fandom.com/wiki/Master_Hand
# Execute attack
execute if entity @s[tag=attack_catch] run function medabots_server:entities/master_hand/catch
execute if entity @s[tag=attack_lasers] run function medabots_server:entities/master_hand/lasers
execute if entity @s[tag=attack_jet] run function medabots_server:entities/master_hand/jet
execute if entity @s[tag=attack_applaud] run function medabots_server:entities/master_hand/applaud
execute if entity @s[tag=attack_double_punch] run function medabots_server:entities/master_hand/double_punch
execute if entity @s[tag=attack_ball_throw] run function medabots_server:entities/master_hand/ball_throw
execute if entity @s[tag=attack_crawl_slam] run function medabots_server:entities/master_hand/crawl_slam
execute if entity @s[tag=attack_ram] run function medabots_server:entities/master_hand/ram
execute if entity @s[tag=attack_crush] run function medabots_server:entities/master_hand/crush
execute if entity @s[tag=attack_gun] run function medabots_server:entities/master_hand/gun
execute if entity @s[tag=attack_grab] run function medabots_server:entities/master_hand/grab
execute if entity @s[tag=attack_poke] run function medabots_server:entities/master_hand/poke
execute if entity @s[tag=attack_punch] run function medabots_server:entities/master_hand/punch
execute if entity @s[tag=attack_slap] run function medabots_server:entities/master_hand/slap
execute if entity @s[tag=attack_drill] run function medabots_server:entities/master_hand/drill
execute if entity @s[tag=attack_sweep] run function medabots_server:entities/master_hand/sweep
execute if entity @s[tag=attack_walk] run function medabots_server:entities/master_hand/walk
execute if entity @s[tag=attack_snap] run function medabots_server:entities/master_hand/snap
execute if entity @s[tag=attack_wind] run function medabots_server:entities/master_hand/wind
execute if entity @s[tag=attack_cards] run function medabots_server:entities/master_hand/cards
execute if entity @s[tag=attack_spread_fire] run function medabots_server:entities/master_hand/spread_fire