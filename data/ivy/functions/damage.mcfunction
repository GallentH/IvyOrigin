scoreboard players operation @s ivy.tmp = @s ivy.dmg
scoreboard players operation @s ivy.tmp *= @s ivy.hp
scoreboard players operation @s ivy.tmp /= @s ivy.eHealth


resource operation @s ivy:base_integrity -= @s ivy.tmp

scoreboard players set @s ivy.dmg 0
function ivy:recalc