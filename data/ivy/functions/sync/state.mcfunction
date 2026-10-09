scoreboard players enable @s ivy.figura
execute unless score @s ivy.figura matches 1..2 run return 0

execute if score @s ivy.figura matches 2 run scoreboard players set @s ivy.lInt -1
execute if score @s ivy.figura matches 2 run scoreboard players set @s ivy.lFlags -1
execute if score @s ivy.figura matches 2 run scoreboard players set @s ivy.figura 1
execute if score @s ivy.lFlags matches -1 run function ivy:sync/powers

execute store result score @s ivy.sInt run resource get @s ivy:base_integrity

execute store result score @s ivy.sInt run resource get @s ivy:base_integrity
execute store result score @s ivy.sEn run resource get @s ivy:energy_energy
execute store result score @s ivy.sDur run resource get @s ivy:armblade_durval
execute if score @s ivy.sInt = @s ivy.lInt if score @s ivy.sEn = @s ivy.lEn if score @s ivy.sDur = @s ivy.lDur run return 0

tellraw @s {"text":"ivys","extra":[" ",{"score":{"name":"@s","objective":"ivy.sInt"}}," ",{"score":{"name":"@s","objective":"ivy.sEn"}}," ",{"score":{"name":"@s","objective":"ivy.sDur"}}]}
scoreboard players operation @s ivy.lInt = @s ivy.sInt
scoreboard players operation @s ivy.lEn = @s ivy.sEn
scoreboard players operation @s ivy.lDur = @s ivy.sDur