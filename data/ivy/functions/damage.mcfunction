scoreboard players operation @s ivy.hp = @s ivy.maxInt
scoreboard players operation @s ivy.hp /= #10 ivy.const

scoreboard players operation @s ivy.tmp = @s ivy.dmg
scoreboard players operation @s ivy.tmp -= @s ivy.prevDmg
scoreboard players operation @s ivy.tmp *= @s ivy.hp
scoreboard players operation @s ivy.tmp /= @s ivy.eHealth


resource operation @s ivy:base_integrity -= @s ivy.tmp

scoreboard players operation @s ivy.prevDmg = @s ivy.dmg
function ivy:recalc