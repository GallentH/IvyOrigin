function ivy:split
execute if score @s ivy.hand matches 1 run data modify storage ivy:create item set from entity @s Inventory[{Slot:-106b}].id
execute if score @s ivy.hand matches 2 run data modify storage ivy:create item set from entity @s SelectedItem.id

execute if data storage ivy:create {item: "minecraft:wooden_sword"} run scoreboard players set @s ivy.swordTier 1
execute if data storage ivy:create {item: "minecraft:stone_sword"} run scoreboard players set @s ivy.swordTier 2
execute if data storage ivy:create {item: "minecraft:iron_sword"} run scoreboard players set @s ivy.swordTier 3
execute if data storage ivy:create {item: "minecraft:golden_sword"} run scoreboard players set @s ivy.swordTier 4
execute if data storage ivy:create {item: "minecraft:diamond_sword"} run scoreboard players set @s ivy.swordTier 5
execute if data storage ivy:create {item: "minecraft:netherite_sword"} run scoreboard players set @s ivy.swordTier 6

execute if score @s ivy.swordTier matches 1 run scoreboard players set @s ivy.swordDur 60
execute if score @s ivy.swordTier matches 2 run scoreboard players set @s ivy.swordDur 132
execute if score @s ivy.swordTier matches 3 run scoreboard players set @s ivy.swordDur 251
execute if score @s ivy.swordTier matches 4 run scoreboard players set @s ivy.swordDur 33
execute if score @s ivy.swordTier matches 5 run scoreboard players set @s ivy.swordDur 1562
execute if score @s ivy.swordTier matches 6 run scoreboard players set @s ivy.swordDur 2032

scoreboard players set @s ivy.tmp 0
execute if score @s ivy.hand matches 1 store result score @s ivy.tmp run data get entity @s Inventory[{Slot:-106b}].tag.Damage
execute if score @s ivy.hand matches 2 store result score @s ivy.tmp run data get entity @s SelectedItem.tag.Damage

scoreboard players operation @s ivy.swordDur -= @s ivy.tmp
scoreboard players operation @s ivy.swordDur /= #2 ivy.const

execute if score @s ivy.hand matches 1 store success score @s ivy.mend if data entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:mending"}]
execute if score @s ivy.hand matches 2 store success score @s ivy.mend if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:mending"}]

scoreboard players set @s ivy.cost 0

function ivy:armblade/create

execute if score @s ivy.hand matches 1 run item modify entity @s weapon.offhand ivy:subtract
execute if score @s ivy.hand matches 2 run item modify entity @s weapon.mainhand ivy:subtract