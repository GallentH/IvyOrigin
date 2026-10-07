

execute store result score @s ivy.const run resource get @s ivy:base_integrity

# Energy Regen
scoreboard players operation @s ivy.tmp = @s ivy.maxRegen
scoreboard players operation @s ivy.tmp -= @s ivy.minRegen
scoreboard players operation @s ivy.tmp *= @s ivy.const
scoreboard players operation @s ivy.tmp /= @s ivy.maxInt
scoreboard players operation @s ivy.tmp += @s ivy.minRegen
resource operation @s ivy:energy_regenrate = @s ivy.tmp

# Armor Calculations
scoreboard players operation @s ivy.tmp = @s ivy.const
scoreboard players operation @s ivy.tmp -= @s ivy.mid
scoreboard players operation @s ivy.tmp += @s ivy.stepA
scoreboard players operation @s ivy.tmp -= #1 ivy.const
scoreboard players operation @s ivy.tmp /= @s ivy.stepA
scoreboard players operation @s ivy.tmp > #0 ivy.const
scoreboard players operation @s ivy.tmp < @s ivy.maxArmor
resource operation @s ivy:base_armorbonus = @s ivy.tmp

# Health
scoreboard players operation @s ivy.tmp = @s ivy.const
scoreboard players operation @s ivy.tmp += @s ivy.stepH
scoreboard players operation @s ivy.tmp -= #1 ivy.const
scoreboard players operation @s ivy.tmp /= @s ivy.stepH
scoreboard players operation @s ivy.const = @s ivy.maxHPDown
scoreboard players operation @s ivy.const -= @s ivy.tmp
scoreboard players operation @s ivy.const > #0 ivy.const
scoreboard players operation @s ivy.const < @s ivy.maxHPDown
scoreboard players operation @s ivy.tmp = #0 ivy.const
scoreboard players operation @s ivy.tmp -= @s ivy.const

resource operation @s ivy:base_hpdown = @s ivy.tmp

