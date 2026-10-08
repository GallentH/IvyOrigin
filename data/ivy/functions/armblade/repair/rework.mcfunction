execute store result score @s ivy.levels run xp query @s levels
execute if score @s ivy.levels < #rework ivy.const run title @s actionbar {"text":"Not enough levels.","color":"red"}
execute if score @s ivy.levels < #rework ivy.const run return 0

scoreboard players operation @s ivy.levels = #rework ivy.const
function ivy:armblade/repair/pay
scoreboard players set @s ivy.ingots 1
execute if score @s ivy.hand matches 1 run item modify entity @s weapon.offhand ivy:subtractingots
execute if score @s ivy.hand matches 2 run item modify entity @s weapon.mainhand ivy:subtractingots

execute store result score @s ivy.swordDur run data get storage ivy:create item.salvDur
execute store result score @s ivy.swordTier run data get storage ivy:create item.salvTier
function ivy:armblade/salvage/tiername
execute if score @s ivy.hand matches 1 run item modify entity @s weapon.mainhand ivy:salvfix
execute if score @s ivy.hand matches 2 run item modify entity @s weapon.offhand ivy:salvfix

data remove storage ivy:create salvage
data remove storage ivy:create item
