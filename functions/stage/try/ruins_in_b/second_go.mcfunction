execute if entity @s[advancements={medabots_server:stages/wave_1/ruins_in_b_first_go=true}] run function medabots_server:stage/create/ruins_in_b/second_go_initialization
execute unless entity @s[advancements={medabots_server:stages/wave_1/ruins_in_b_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.ruins_in","with":[{"text":"B"}]},{"translate":"medabots_server:sign.stage.version.first_go"}]}]}