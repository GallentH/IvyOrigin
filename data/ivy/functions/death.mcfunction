execute store result score #keepinv ivy.const run gamerule keepInventory
execute store result score @s ivy.swordTier run resource get @s ivy:armblade_tier
execute if score #keepinv ivy.const matches 1 run return 0
execute if score @s ivy.swordTier matches 0 run return 0

execute store result score @s ivy.mend run resource get @s ivy:armblade_mending

execute if score @s ivy.swordTier matches 1.. run function ivy:armblade/startsalvage
resource set @s ivy:armblade_tier 0
resource set @s ivy:armblade_mending 0