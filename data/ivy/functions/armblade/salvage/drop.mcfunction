summon item ~ ~ ~ {Tags:["ivyDrop"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=ivyDrop,sort=nearest,limit=1] Item set from storage ivy:create drop
tag @e[tag=ivyDrop,sort=nearest,limit=1] remove ivyDrop