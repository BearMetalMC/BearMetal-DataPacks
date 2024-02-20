# Reads the item at the current slot and attempts to place it. If successful, increments slot by 1
# Executed as chest_minecart

# execute store success score @s bmc.success 

# $execute store result storage bearmetalcarts:item temp int 1 run data get entity @s Items[$(slot)]
# data modify storage bearmetalcarts:item item set from 
$execute unless score @s bmc.slot matches -1 run function bearmetalcarts:placer/place with entity @s Items[{Slot: $(slot)b}]