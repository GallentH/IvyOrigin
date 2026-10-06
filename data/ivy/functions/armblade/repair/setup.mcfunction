function ivy:split
execute if score @s ivy.hand matches 1 run data modify storage ivy:create item set from entity @s SelectedItem.tag
execute if score @s ivy.hand matches 2 run data modify storage ivy:create item set from entity @s Inventory[{Slot:-106b}].tag


execute store result score @s ivy.swordTier run data get storage ivy:create item.kitType
execute store result score @s ivy.mend run data get storage ivy:create item.ivyMend
execute store result score @s ivy.cost run data get storage ivy:create item.ivyRepairCost

function ivy:armblade/repair/math