function ivy:split
execute if score @s ivy.hand matches 1 run data modify storage ivy:create item set from entity @s SelectedItem.tag
execute if score @s ivy.hand matches 2 run data modify storage ivy:create item set from entity @s Inventory[{Slot:-106b}].tag

execute store result score @s ivy.swordDur run data get storage ivy:create item.ivyDur
execute store result score @s ivy.swordTier run data get storage ivy:create item.kitType
execute store result score @s ivy.tmp run data get storage ivy:create item.ivyMax
execute store result score @s ivy.mend run data get storage ivy:create item.ivyMend
execute store result score @s ivy.cost run data get storage ivy:create item.ivyRepairCost

resource operation @s ivy:armblade_durval = @s ivy.swordDur
resource operation @s ivy:armblade_durmax = @s ivy.tmp
resource operation @s ivy:armblade_tier = @s ivy.swordTier
resource operation @s ivy:armblade_mending = @s ivy.mend
resource operation @s ivy:armblade_repaircost = @s ivy.cost

execute if score @s ivy.swordTier matches 1 run resource set @s ivy:armblade_damageval 4
execute if score @s ivy.swordTier matches 4 run resource set @s ivy:armblade_damageval 4
execute if score @s ivy.swordTier matches 2 run resource set @s ivy:armblade_damageval 5
execute if score @s ivy.swordTier matches 3 run resource set @s ivy:armblade_damageval 6
execute if score @s ivy.swordTier matches 5 run resource set @s ivy:armblade_damageval 7
execute if score @s ivy.swordTier matches 6 run resource set @s ivy:armblade_damageval 8

data remove storage ivy:create item