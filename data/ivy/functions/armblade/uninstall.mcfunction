function ivy:split
execute store result score @s ivy.swordTier run resource get @s ivy:armblade_tier
execute store result score @s ivy.swordDur run resource get @s ivy:armblade_durval
execute store result score @s ivy.mend run resource get @s ivy:armblade_mending
execute store result score @s ivy.cost run resource get @s ivy:armblade_repaircost
function ivy:armblade/create
resource set @s ivy:armblade_tier 0
resource set @s ivy:armblade_mending 0