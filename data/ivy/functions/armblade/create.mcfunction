execute store result storage ivy:create dur short 1 run scoreboard players get @s ivy.swordDur
execute store result storage ivy:create cost byte 1 run scoreboard players get @s ivy.cost
execute if score @s ivy.hand matches 1 run function ivy:armblade/mhand
execute if score @s ivy.hand matches 2 run function ivy:armblade/ohand

data remove storage ivy:create item