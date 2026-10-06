execute if score @s ivy.hand matches 1 store result score @s ivy.tmp run data get entity @s SelectedItem.Count
execute if score @s ivy.hand matches 2 store result score @s ivy.tmp run data get entity @s Inventory[{Slot:-106b}].Count

execute if score @s ivy.tmp matches 2.. run function ivy:splitmain