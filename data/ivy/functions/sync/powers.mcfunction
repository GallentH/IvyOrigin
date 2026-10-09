execute unless score @s ivy.figura matches 1 run return 0
# flags: bit 6 mending ... bit 0 deployed
execute store result score @s ivy.sFlags run resource get @s ivy:armblade_mending

scoreboard players operation @s ivy.sFlags *= #2 ivy.const
execute store result score @s ivy.tmp run resource get @s ivy:cybernetics_emergency
scoreboard players operation @s ivy.sFlags += @s ivy.tmp

scoreboard players operation @s ivy.sFlags *= #2 ivy.const
execute store result score @s ivy.tmp run resource get @s ivy:energy_powerdown
scoreboard players operation @s ivy.sFlags += @s ivy.tmp

scoreboard players operation @s ivy.sFlags *= #2 ivy.const
execute store result score @s ivy.tmp run resource get @s ivy:cybernetics_repair
scoreboard players operation @s ivy.sFlags += @s ivy.tmp

scoreboard players operation @s ivy.sFlags *= #2 ivy.const
execute store result score @s ivy.tmp run resource get @s ivy:cybernetics_vision
scoreboard players operation @s ivy.sFlags += @s ivy.tmp

scoreboard players operation @s ivy.sFlags *= #2 ivy.const
execute store result score @s ivy.tmp run resource get @s ivy:cybernetics_booster
scoreboard players operation @s ivy.sFlags += @s ivy.tmp

scoreboard players operation @s ivy.sFlags *= #2 ivy.const
execute store result score @s ivy.tmp run resource get @s ivy:cybernetics_armblade
scoreboard players operation @s ivy.sFlags += @s ivy.tmp

execute store result score @s ivy.sSel run resource get @s ivy:cybernetics_selector
execute store result score @s ivy.sTier run resource get @s ivy:armblade_tier
execute if score @s ivy.sFlags = @s ivy.lFlags if score @s ivy.sSel = @s ivy.lSel if score @s ivy.sTier = @s ivy.lTier run return 0

tellraw @s {"text":"ivyp","extra":[" ",{"score":{"name":"@s","objective":"ivy.sFlags"}}," ",{"score":{"name":"@s","objective":"ivy.sSel"}}," ",{"score":{"name":"@s","objective":"ivy.sTier"}}]}
scoreboard players operation @s ivy.lFlags = @s ivy.sFlags
scoreboard players operation @s ivy.lSel = @s ivy.sSel
scoreboard players operation @s ivy.lTier = @s ivy.sTier
