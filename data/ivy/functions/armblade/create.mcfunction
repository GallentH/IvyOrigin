execute store result storage ivy:create tier byte 1 run scoreboard players get @s ivy.swordTier
execute store result storage ivy:create dur short 1 run scoreboard players get @s ivy.swordDur

#data chain
execute if data entity @s Inventory[{Slot:-106b}].tag{kitType:0b} run scoreboard players set @s ivy.hand 2
execute if data entity @s SelectedItem.tag{kitType:0b} run scoreboard players set @s ivy.hand 1

execute if score @s ivy.hand matches 1 run function ivy:armblade/mhand
execute if score @s ivy.hand matches 2 run function ivy:armblade/ohand

scoreboard players reset @s ivy.hand
