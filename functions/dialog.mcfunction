# Infinity
execute if entity @s[tag=dialog_infinity_opening,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/opening
execute if entity @s[tag=dialog_infinity_opening_battle,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/opening_battle
execute if entity @s[tag=dialog_infinity_meet_karin,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/meet_karin
execute if entity @s[tag=dialog_infinity_meet_max,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/meet_max
execute if entity @s[tag=dialog_infinity_see_doctor_haru,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/see_doctor_haru
execute if entity @s[tag=dialog_infinity_meet_koji,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/meet_koji
execute if entity @s[tag=dialog_infinity_see_jaxy,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/see_jaxy
execute if entity @s[tag=dialog_infinity_meet_director_tune,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/meet_director_tune
execute if entity @s[tag=dialog_infinity_see_spyke,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/see_spyke
execute if entity @s[tag=dialog_infinity_see_sloan,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/see_sloan
execute if entity @s[tag=dialog_infinity_meet_screws,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/meet_screws
execute if entity @s[tag=dialog_infinity_vs_spyke_begin,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/vs_spyke_begin
execute if entity @s[tag=dialog_infinity_vs_spyke,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/vs_spyke
execute if entity @s[tag=dialog_infinity_vs_spyke_battle,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/vs_spyke_battle
execute if entity @s[tag=dialog_infinity_kuwagata_medal,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/kuwagata_medal
execute if entity @s[tag=dialog_infinity_meet_jaxy,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/meet_jaxy
execute if entity @s[tag=dialog_infinity_maxs_first_love,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/maxs_first_love
execute if entity @s[tag=dialog_infinity_meet_doctor_haru,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/meet_doctor_haru
execute if entity @s[tag=dialog_infinity_tunes_order,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/tunes_order
execute if entity @s[tag=dialog_infinity_medanappings,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/medanappings
execute if entity @s[tag=dialog_infinity_tune_observes,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/tune_observes
execute if entity @s[tag=dialog_infinity_jaxy_speaks,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/jaxy_speaks
execute if entity @s[tag=dialog_infinity_rubberobo_breakout,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/rubberobo_breakout
#execute if entity @s[tag=dialog_infinity_neutranurse_helps,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/neutranurse_helps
#execute if entity @s[tag=dialog_infinity_rubberobo_scoop,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/rubberobo_scoop
execute if entity @s[tag=dialog_infinity_rubberobo_enters_rock_a,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/rubberobo_enters_rock_a
execute if entity @s[tag=dialog_infinity_rubberobo_leaves_rock_a,tag=loaded_chunk_10] run function medabots_server:dialog/infinity/rubberobo_leaves_rock_a

# Other
execute if entity @s[tag=dialog_magolor] run function medabots_server:dialog/magolor

# Trigger areas
execute if entity @s[scores={Dialog=0},gamemode=!creative] run function medabots_server:dialog/trigger_area

# Require loaded chunks
tag @s[tag=!loaded_chunk_10,tag=loaded_chunk_9] add loaded_chunk_10
tag @s[tag=!loaded_chunk_9,tag=loaded_chunk_8] add loaded_chunk_9
tag @s[tag=!loaded_chunk_8,tag=loaded_chunk_7] add loaded_chunk_8
tag @s[tag=!loaded_chunk_7,tag=loaded_chunk_6] add loaded_chunk_7
tag @s[tag=!loaded_chunk_6,tag=loaded_chunk_5] add loaded_chunk_6
tag @s[tag=!loaded_chunk_5,tag=loaded_chunk_4] add loaded_chunk_5
tag @s[tag=!loaded_chunk_4,tag=loaded_chunk_3] add loaded_chunk_4
tag @s[tag=!loaded_chunk_3,tag=loaded_chunk_2] add loaded_chunk_3
tag @s[tag=!loaded_chunk_2,tag=loaded_chunk_1] add loaded_chunk_2
tag @s[tag=!loaded_chunk_1] add loaded_chunk_1
tag @s add loaded_chunk_triggered