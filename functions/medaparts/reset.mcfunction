# Deactivate parts
execute store result entity @s Inventory[{tag:{medabots_server:{activated:1b}}}].tag.medabots_server.activated byte 1 run scoreboard players get #0 Constants

# Remove status effects
scoreboard players set @s[scores={AuxiliaryTime=1..}] AuxiliaryTime 1
scoreboard players set @s[scores={BugTime=1..}] BugTime 1
scoreboard players set @s[scores={ConfuseTime=1..}] ConfuseTime 1
scoreboard players set @s[scores={DefenseTime=1..}] DefenseTime 1
scoreboard players set @s[scores={FreezeTime=1..}] FreezeTime 1
scoreboard players set @s[scores={HideTime=1..}] HideTime 1
scoreboard players set @s[scores={HoldTime=1..}] HoldTime 1
scoreboard players set @s[scores={IneffectiveTime=1..}] IneffectiveTime 1
scoreboard players set @s[scores={InfectTime=1..}] InfectTime 1
scoreboard players set @s[scores={NoDefendTime=1..}] NoDefendTime 1
scoreboard players set @s[scores={OverHeatingFly=1..}] OverHeatingFly 1
scoreboard players set @s[scores={OverheatingMedal=1..}] OverheatingMedal 1
scoreboard players set @s[scores={ParalyzeTime=1..}] ParalyzeTime 1
scoreboard players set @s[scores={PerfectGuardTime=1..}] PerfectGuardTime 1
scoreboard players set @s[scores={ScoutTime=1..}] ScoutTime 1
tag @s[tag=static_fly] remove static_fly
tag @s[tag=blocked_medaforce] remove blocked_medaforce

# Un-set combat
tag @s remove hostile