execute if entity @s[advancements={medabots_server:stages/seashore_a_first_go=true}] run function medabots_server:stage/create/seashore_a/second_go
execute unless entity @s[advancements={medabots_server:stages/seashore_a_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.1","with":[{"translate":"medabots_server:location.seashore","with":[{"text":"A"}]}]}]}