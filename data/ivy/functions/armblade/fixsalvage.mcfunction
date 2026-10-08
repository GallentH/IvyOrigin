function ivy:split
execute if score @s ivy.hand matches 1 run data modify storage ivy:create item set from entity @s Inventory[{Slot:-106b}].tag
execute if score @s ivy.hand matches 2 run data modify storage ivy:create item set from entity @s SelectedItem.tag
execute if data storage ivy:create item{salvWorn:1b} run title @s actionbar {"text":"Needs reworking at an anvil first.","color":"yellow"}
execute if data storage ivy:create item{salvWorn:1b} run return 0

execute store result score @s ivy.swordTier run data get storage ivy:create item.salvTier
execute store result score @s ivy.swordDur run data get storage ivy:create item.salvDur
execute store result score @s ivy.cost run data get storage ivy:create item.salvCost
execute store result score @s ivy.mend run data get storage ivy:create item.ivyMend



function ivy:armblade/create
execute if score @s ivy.hand matches 1 run item modify entity @s weapon.offhand ivy:subtract
execute if score @s ivy.hand matches 2 run item modify entity @s weapon.mainhand ivy:subtract
