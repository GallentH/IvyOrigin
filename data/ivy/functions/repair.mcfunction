execute if score @s ivy.hand matches 1 run data modify storage ivy:create item set from entity @s SelectedItem.id
execute if score @s ivy.hand matches 2 run data modify storage ivy:create item set from entity @s Inventory[{Slot:-106b}].id

execute if data storage ivy:create {item: "minecraft:copper_ingot"} run resource change @s ivy:base_integrity 50
execute if data storage ivy:create {item: "minecraft:iron_ingot"} run resource change @s ivy:base_integrity 100
execute if data storage ivy:create {item: "minecraft:gold_ingot"} run resource change @s ivy:base_integrity 150

function ivy:recalc

execute if score @s ivy.hand matches 1 run item modify entity @s weapon.mainhand ivy:subtract
execute if score @s ivy.hand matches 2 run item modify entity @s weapon.offhand ivy:subtract
data remove storage ivy:create item