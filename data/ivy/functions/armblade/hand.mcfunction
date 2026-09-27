summon item_frame ~ ~ ~ {Tags:["ivy_frame"]}
data modify entity @e[tag=ivy_frame,limit=1,sort=nearest] Item set from entity @e[tag=ivy_sword,limit=1,sort=nearest] Item

execute if score @s ivy.hand matches 1 run item replace entity @s weapon.mainhand from entity @e[type=item,limit=1,sort=nearest,tag=ivy_frame] container.0
execute if score @s ivy.hand matches 2 run item replace entity @s weapon.offhand from entity @e[type=item,limit=1,sort=nearest,tag=ivy_frame] container.0

kill @e[tag=ivy_frame,limit=1,sort=nearest]
kill @e[tag=ivy_sword,limit=1,sort=nearest]

scoreboard players reset @s ivy.hand