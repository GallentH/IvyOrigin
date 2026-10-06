
summon minecraft:item ~ ~ ~ {Tags:["ivySplit"],PickupDelay:0s, Item:{id:"minecraft:dirt",Count:1b}}

#remove one, copy stack to item, then set number to one. Split's stack to prevent dupes.
#main hand
execute if score @s ivy.hand matches 1 run item modify entity @s weapon.mainhand ivy:subtract
execute if score @s ivy.hand matches 1 run data modify entity @e[type=minecraft:item,sort=nearest,limit=1,tag=ivySplit] Item set from entity @s SelectedItem
execute if score @s ivy.hand matches 1 run item modify entity @s weapon.mainhand ivy:setone

#offhand
execute if score @s ivy.hand matches 2 run item modify entity @s weapon.offhand ivy:subtract
execute if score @s ivy.hand matches 2 run data modify entity @e[type=minecraft:item,sort=nearest,limit=1,tag=ivySplit] Item set from entity @s Inventory[{Slot:-106b}]
execute if score @s ivy.hand matches 2 run item modify entity @s weapon.offhand ivy:setone

tag @e[limit=1,tag=ivySplit,sort=nearest] remove ivySplit