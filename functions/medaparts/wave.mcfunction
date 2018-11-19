# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Wave=1}] Time 19
scoreboard players set @s[scores={Time=3,Wave=3}] Time 27

# Prevent self-damaging
effect give @s[scores={Time=32}] minecraft:resistance 1 5 true

# Spawn an explosion depending on the charge value
execute if entity @s[scores={Charge=0..5,Wave=1,Time=34}] run summon minecraft:creeper ^ ^ ^2 {CustomName:"{\"translate\":\"medabots_server:move.wave\"}",Fuse:0s,ExplosionRadius:1b,Tags:["wave"]}
execute if entity @s[scores={Charge=6..10,Wave=1,Time=34}] run summon minecraft:creeper ^ ^ ^2 {CustomName:"{\"translate\":\"medabots_server:move.wave\"}",Fuse:0s,ExplosionRadius:2b,Tags:["wave"]}
execute if entity @s[scores={Charge=11..15,Wave=1,Time=34}] run summon minecraft:creeper ^ ^ ^2 {CustomName:"{\"translate\":\"medabots_server:move.wave\"}",Fuse:0s,ExplosionRadius:3b,Tags:["wave"]}
execute if entity @s[scores={Charge=16..20,Wave=1,Time=34}] run summon minecraft:creeper ^ ^ ^2 {CustomName:"{\"translate\":\"medabots_server:move.wave\"}",Fuse:0s,ExplosionRadius:4b,Tags:["wave"]}
execute if entity @s[scores={Charge=21..25,Wave=1,Time=34}] run summon minecraft:creeper ^ ^ ^2 {CustomName:"{\"translate\":\"medabots_server:move.wave\"}",Fuse:0s,ExplosionRadius:5b,Tags:["wave"]}
execute if entity @s[scores={Charge=26..30,Wave=1,Time=34}] run summon minecraft:creeper ^ ^ ^2 {CustomName:"{\"translate\":\"medabots_server:move.wave\"}",Fuse:0s,ExplosionRadius:6b,Tags:["wave"]}
execute if entity @s[scores={Charge=31..35,Wave=1,Time=34}] run summon minecraft:creeper ^ ^ ^2 {CustomName:"{\"translate\":\"medabots_server:move.wave\"}",Fuse:0s,ExplosionRadius:7b,Tags:["wave"]}
execute if entity @s[scores={Charge=36..40,Wave=1,Time=34}] run summon minecraft:creeper ^ ^ ^2 {CustomName:"{\"translate\":\"medabots_server:move.wave\"}",Fuse:0s,ExplosionRadius:8b,Tags:["wave"]}
execute if entity @s[scores={Charge=41..45,Wave=1,Time=34}] run summon minecraft:creeper ^ ^ ^2 {CustomName:"{\"translate\":\"medabots_server:move.wave\"}",Fuse:0s,ExplosionRadius:9b,Tags:["wave"]}
execute if entity @s[scores={Charge=46..50,Wave=1,Time=34}] run summon minecraft:creeper ^ ^ ^2 {CustomName:"{\"translate\":\"medabots_server:move.wave\"}",Fuse:0s,ExplosionRadius:10b,Tags:["wave"]}

# Remove from head uses if it was the head part
scoreboard players remove @s[scores={Wave=2,Time=32}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=40..}] Wave
scoreboard players set @s[scores={Time=40..}] Time 1

# Prevent knockback from this attack
replaceitem entity @s armor.head minecraft:stone_button{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.remove_knockback\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.remove_knockback.wave\"}"]},AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1.0f,Operation:0,UUIDMost:93175l,UUIDLeast:132111l,Slot:"head"}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],medabots_server:{id:"medabots_server:remove_knockback"}}