
#exit early if repaired six times. Only mending will save your weapons now.
execute if score @s ivy.cost matches 40.. run title @s actionbar {"text":"Repaired too many times.","color":"red"}
execute if score @s ivy.cost matches 40.. run return 0


#durability setup, calculating cost per ingot
execute store result score @s ivy.swordDur run data get storage ivy:create item.ivyDur
execute store result score @s ivy.const run data get storage ivy:create item.ivyMax

#return early if durability is full
execute if score @s ivy.swordDur >= @s ivy.const run title @s actionbar {"text":"Already fully repaired.","color":"yellow"}
execute if score @s ivy.swordDur >= @s ivy.const run return 0

#durability per ingot
scoreboard players operation @s ivy.tmp = @s ivy.const
scoreboard players operation @s ivy.tmp /= #4 ivy.const

#ceil
scoreboard players operation @s ivy.ingots = @s ivy.const
scoreboard players operation @s ivy.ingots -= @s ivy.swordDur
scoreboard players operation @s ivy.ingots += @s ivy.tmp
scoreboard players remove @s ivy.ingots 1
scoreboard players operation @s ivy.ingots /= @s ivy.tmp

#Level cost starts as amount per hand
execute if score @s ivy.hand matches 1 store result score @s ivy.levels run data get entity @s Inventory[{Slot:-106b}].Count
execute if score @s ivy.hand matches 2 store result score @s ivy.levels run data get entity @s SelectedItem.Count
#Set ingots to minimum between the amount of ingots/materials needed and the amount held
scoreboard players operation @s ivy.ingots < @s ivy.levels
#If sneaking, we only use one material. Seldom useful except when mats are rare and inventories are full.
execute if score @s ivy.repmode matches 1 run scoreboard players operation @s ivy.ingots < #1 ivy.const
#Now levels stores the actual level the player has
execute store result score @s ivy.levels run xp query @s levels
#Subtract the penalty from the current levels to see if enough levels remain
scoreboard players operation @s ivy.levels -= @s ivy.cost
scoreboard players operation @s ivy.ingots < @s ivy.levels
#Exit if levels are too low. God I wish I knew return existed earlier.
execute if score @s ivy.ingots matches ..0 run title @s actionbar {"text":"Not enough levels.","color":"red"}
execute if score @s ivy.ingots matches ..0 run return 0


scoreboard players operation @s ivy.tmp *= @s ivy.ingots
scoreboard players operation @s ivy.swordDur += @s ivy.tmp
scoreboard players operation @s ivy.swordDur < @s ivy.const


# set levels to the levels paid (penalty+ingots) then subtract powers of two.
scoreboard players operation @s ivy.levels = @s ivy.cost
scoreboard players operation @s ivy.levels += @s ivy.ingots
function ivy:armblade/repair/pay
# remove the resulting number of ingots from the player's hand. Very neat that item modifiers allow this.
execute if score @s ivy.hand matches 1 run item modify entity @s weapon.offhand ivy:subtractingots
execute if score @s ivy.hand matches 2 run item modify entity @s weapon.mainhand ivy:subtractingots

# next penalty, rebuild
scoreboard players operation @s ivy.cost += @s ivy.cost
scoreboard players add @s ivy.cost 1
function ivy:armblade/create