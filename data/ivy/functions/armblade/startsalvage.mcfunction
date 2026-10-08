execute store result storage ivy:create salvage.tier byte 1 run resource get @s ivy:armblade_tier
execute store result storage ivy:create salvage.cost byte 1 run resource get @s ivy:armblade_repaircost
execute store result score @s ivy.swordDur run resource get @s ivy:armblade_durval

scoreboard players operation @s ivy.swordDur /= #2 ivy.const
execute if score @s ivy.swordDur matches ..0 run scoreboard players set @s ivy.swordDur 1
execute store result storage ivy:create salvage.dur short 1 run scoreboard players get @s ivy.swordDur

function ivy:armblade/salvage/tiername

item replace entity @s weapon.mainhand with minecraft:brick
item modify entity @s weapon.mainhand ivy:salvage
execute if score @s ivy.mend matches 1 run item modify entity @s weapon.mainhand ivy:mending
execute if score @s ivy.mend matches 0 run item modify entity @s weapon.mainhand ivy:salvworn


data modify storage ivy:create drop set from entity @s SelectedItem
data remove storage ivy:create drop.Slot
execute at @s run tag @e[type=corpse:corpse,distance=..3,sort=nearest,limit=1] add ivyCorpse
execute if entity @e[tag=ivyCorpse] run data modify entity @e[tag=ivyCorpse,limit=1] Death.Items append from storage ivy:create drop
execute unless entity @e[tag=ivyCorpse] run function ivy:armblade/salvage/drop
tag @e[tag=ivyCorpse] remove ivyCorpse
item replace entity @s weapon.mainhand with air
data remove storage ivy:create salvage
data remove storage ivy:create drop
