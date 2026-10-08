summon marker ~ ~ ~ {Tags:["testmarker"]}
tag @s add testMove

data merge storage example:temp {Pos:[0.0, 0.0, 0.0]}
execute store result storage example:temp Pos[0] double 1.0 run data get entity @p LastDeathLocation.pos[0]
execute store result storage example:temp Pos[1] double 1.0 run data get entity @p LastDeathLocation.pos[1]
execute store result storage example:temp Pos[2] double 1.0 run data get entity @p LastDeathLocation.pos[2]

execute as @e[tag=testmarker,limit=1] run function ivy:testmove

execute in minecraft:the_nether run tp @s @e[tag=testmarker,limit=1]