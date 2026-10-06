#set our working number to the excess xp
scoreboard players operation @s ivy.mendwork = @s ivy.xp
scoreboard players operation @s ivy.mendwork -= @s ivy.mendbase

#determine the missing durability (halved for xp conversion)
execute store result score @s ivy.tmp run resource get @s ivy:armblade_durmax
execute store result score @s ivy.swordDur run resource get @s ivy:armblade_durval
scoreboard players operation @s ivy.tmp -= @s ivy.swordDur
scoreboard players add @s ivy.tmp 1
scoreboard players operation @s ivy.tmp /= #2 ivy.const

#ensure that mendwork is the least possible xp
scoreboard players operation @s ivy.mendwork < @s ivy.tmp 

#set the mendbase for the next tick early
scoreboard players operation @s ivy.mendbase = @s ivy.xp
scoreboard players operation @s ivy.mendbase -= @s ivy.mendwork

#apply the durability fix
scoreboard players operation @s ivy.tmp = @s ivy.mendwork
scoreboard players operation @s ivy.tmp *= #2 ivy.const
resource operation @s ivy:armblade_durval += @s ivy.tmp
execute store result score @s ivy.swordDur run resource get @s ivy:armblade_durval
execute store result score @s ivy.tmp run resource get @s ivy:armblade_durmax
scoreboard players operation @s ivy.swordDur < @s ivy.tmp
resource operation @s ivy:armblade_durval = @s ivy.swordDur

#remove xp
function ivy:mending/drain