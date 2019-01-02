# Streetpass users
execute if entity @s[name="FVbico"] run tellraw @a[distance=0.1..10,scores={StreetPassHits=0..9,StreetPassCool=0}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.3ds","color":"light_purple"},{"translate":"medabots_server:message.3ds.streetpass.detect","color":"light_purple"}],"extra":[{"text":"\n"},{"translate":"chat.type.text","with":[{"translate":"medabots_server:item.3ds","color":"light_purple"},{"translate":"medabots_server:message.3ds.streetpass.use","color":"light_purple","extra":[{"text":" /trigger MedabotsServer set 112205523","color":"light_purple"}]}]}]}
execute if entity @s[name="UltimateGold"] run tellraw @a[distance=0.1..10,scores={StreetPassHits=0..9,StreetPassCool=0}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.3ds","color":"light_purple"},{"translate":"medabots_server:message.3ds.streetpass.detect","color":"light_purple"}],"extra":[{"text":"\n"},{"translate":"chat.type.text","with":[{"translate":"medabots_server:item.3ds","color":"light_purple"},{"translate":"medabots_server:message.3ds.streetpass.use","color":"light_purple","extra":[{"text":" /trigger MedabotsServer set ???","color":"light_purple"}]}]}]}
execute if entity @s[name="Skydier"] run tellraw @a[distance=0.1..10,scores={StreetPassHits=0..9,StreetPassCool=0}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.3ds","color":"light_purple"},{"translate":"medabots_server:message.3ds.streetpass.detect","color":"light_purple"}],"extra":[{"text":"\n"},{"translate":"chat.type.text","with":[{"translate":"medabots_server:item.3ds","color":"light_purple"},{"translate":"medabots_server:message.3ds.streetpass.use","color":"light_purple","extra":[{"text":" /trigger MedabotsServer set 91431989","color":"light_purple"}]}]}]}

# Streetpass limitations
scoreboard players add @a[distance=0.1..10,scores={StreetPassHits=0..9,StreetPassCool=0}] StreetPassHits 1
scoreboard players set @a[distance=0.1..10,scores={StreetPassHits=0..9,StreetPassCool=0}] StreetPassCool 13600
scoreboard players add @s[scores={StreetPassHits=1..}] StreetPassTime 1
scoreboard players set @s[scores={StreetPassTime=864000}] StreetPassHits 0
scoreboard players set @s[scores={StreetPassTime=864000}] StreetPassTime 0
scoreboard players remove @s[scores={StreetPassCool=1..}] StreetPassCool 1

# 3DS
tag @s[tag=3ds] remove 3ds
tag @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:3ds"}}}]}] add 3ds
execute if entity @s[tag=!3ds] unless entity @s[nbt={Inventory:[{Slot:11b}]}] run replaceitem entity @s inventory.2 minecraft:diamond_pickaxe{Damage:3,Unbreakable:1b,HideFlags:4,AttributeModifiers:[],display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.3ds\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.3ds.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.3ds.activation\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.drop_to_kill\"}"]},medabots_server:{id:"medabots_server:3ds",kill:1b,version:1}}
tag @a[tag=!street_pass_check,nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:3ds"}}}]}] add street_pass_check
tellraw @a[tag=street_pass_check] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.3ds","color":"light_purple"},{"translate":"medabots_server:message.3ds.info.1","color":"light_purple"}],"extra":[{"text":"\n"},{"translate":"chat.type.text","with":[{"translate":"medabots_server:item.3ds","color":"light_purple"},{"translate":"medabots_server:message.3ds.info.2","color":"light_purple"}]},{"text":"\n"},{"translate":"chat.type.text","with":[{"translate":"medabots_server:item.3ds","color":"light_purple"},{"translate":"medabots_server:message.3ds.info.3","color":"light_purple"}]},{"text":"\n"},{"translate":"chat.type.text","with":[{"translate":"medabots_server:item.3ds","color":"light_purple"},{"translate":"medabots_server:message.3ds.info.4","color":"light_purple"}]},{"text":"\n"},{"translate":"chat.type.text","with":[{"translate":"medabots_server:item.3ds","color":"light_purple"},{"translate":"medabots_server:message.3ds.info.5","color":"light_purple"}]}]}
replaceitem entity @a[tag=street_pass_check] weapon.offhand minecraft:air
tag @a[tag=street_pass_check] remove street_pass_check