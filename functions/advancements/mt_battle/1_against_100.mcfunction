tellraw @s {"translate":"medabots_server:advancements.get.tinpet","with":[{"translate":"medabots_server:item.neutral_tinpet"}],"extra":[{"text":"\n"},{"translate":"medabots_server:advancements.get.rank","with":[{"translate":"medabots_server:scoreboard.team.mt_battle_master"}]}]}
scoreboard players set @s MtBattle 1
give @s minecraft:diamond_pickaxe{Unbreakable:1b,Damage:4,CustomModelData:2,AttributeModifiers:[],HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.neutral_tinpet\"}"},medabots_server:{id:"medabots_server:neutral_tinpet",part:"tinpet",version:1}}