execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_spyke_battle=true}}] if entity @s[nbt=!{Inventory:[{Slot:0b,tag:{medabots_server:{move:"float"}}}]},nbt=!{Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]}] run function medabots_server:stage/create/snowfield_a/first_go_initialization
execute unless entity @s[advancements={medabots_server:wave_1/story_progression={vs_spyke_battle=true}}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.battle.at","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:location.icefield_battle"}]}]}
execute unless entity @s[nbt=!{Inventory:[{Slot:0b,tag:{medabots_server:{move:"float"}}}]},nbt=!{Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.medapart.none_of","hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:move.float","extra":[{"translate":"medabots_server:message.stage.requires.nor"},{"translate":"medabots_server:move.fly"}]}}}]}