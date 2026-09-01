execute as @s unless score @s ivy.eHealth = @s ivy.eHealth run function ivy:defvals
scoreboard players operation @s ivy.prevDmg = @s ivy.dmg
function ivy:recalc