# Effective Health: The amount of damage needed to deplete Integrity
scoreboard objectives add ivy.eHealth dummy
# Max Armor: The highest the armor bonus can go
scoreboard objectives add ivy.maxArmor dummy
# Max HP Down: The most maxhp that may be removed from the player for low integrity
scoreboard objectives add ivy.maxHPDown dummy
# dmg: Player's current running damage taken total. Calculated on taking damage.
scoreboard objectives add ivy.dmg minecraft.custom:minecraft.damage_taken
# maxInt: maximum integrity. May be removed, here as a constant.
scoreboard objectives add ivy.maxInt dummy

scoreboard objectives add ivy.maxRegen dummy
scoreboard objectives add ivy.minRegen dummy

scoreboard objectives add ivy.mid dummy
scoreboard objectives add ivy.stepA dummy
scoreboard objectives add ivy.stepH dummy
scoreboard objectives add ivy.const dummy
scoreboard objectives add ivy.tmp dummy
# hp: how many integrity points are equal to 1 damage.
scoreboard objectives add ivy.hp dummy

#Specifically only for the armblade mechanics
scoreboard objectives add ivy.swordTier dummy
scoreboard objectives add ivy.swordDur dummy
scoreboard objectives add ivy.hand dummy

#To simulate mending
scoreboard objectives add ivy.xp xp
scoreboard objectives add ivy.mendbase dummy
scoreboard objectives add ivy.mendwork dummy
scoreboard objectives add ivy.mend dummy

#repair tracking
scoreboard objectives add ivy.repmode dummy
scoreboard objectives add ivy.cost dummy
scoreboard objectives add ivy.ingots dummy
scoreboard objectives add ivy.levels dummy

scoreboard players set #ivy.defaults ivy.eHealth 40
scoreboard players set #ivy.defaults ivy.maxArmor 5
scoreboard players set #ivy.defaults ivy.maxHPDown 6
scoreboard players set #ivy.defaults ivy.maxInt 1000
scoreboard players set #ivy.defaults ivy.maxRegen 10
scoreboard players set #ivy.defaults ivy.minRegen 3

scoreboard players set #0 ivy.const 0
scoreboard players set #1 ivy.const 1
scoreboard players set #2 ivy.const 2
scoreboard players set #4 ivy.const 4
scoreboard players set #10 ivy.const 10

scoreboard players set #rework ivy.const 5


#Figura sync variables
scoreboard objectives add ivy.figura trigger
#sent relatively often
scoreboard objectives add ivy.sInt dummy
scoreboard objectives add ivy.sEn dummy
scoreboard objectives add ivy.sDur dummy
#to check for changes
scoreboard objectives add ivy.lInt dummy
scoreboard objectives add ivy.lEn dummy
scoreboard objectives add ivy.lDur dummy
#sent infrequently, but also with every major power trigger
scoreboard objectives add ivy.sFlags dummy
scoreboard objectives add ivy.sSel dummy
scoreboard objectives add ivy.sTier dummy
#again, to check for changes
scoreboard objectives add ivy.lFlags dummy
scoreboard objectives add ivy.lSel dummy
scoreboard objectives add ivy.lTier dummy
