# This function checks if the currently selected slot has any rails. If not, it resets the slot to 0 - this means that the rail pattern MUST start at 0
# Executed as a chest_minecart
scoreboard players set #temp bmc.slot -1

execute if data entity @s Items[{Slot: 0b, id:"minecraft:rail"}] run scoreboard players set #temp bmc.slot 0
execute if data entity @s Items[{Slot: 0b, id:"minecraft:powered_rail"}] run scoreboard players set #temp bmc.slot 0
execute if data entity @s Items[{Slot: 0b, id:"minecraft:detector_rail"}] run scoreboard players set #temp bmc.slot 0
execute if data entity @s Items[{Slot: 0b, id:"minecraft:activator_rail"}] run scoreboard players set #temp bmc.slot 0

$execute if data entity @s Items[{Slot: $(slot)b, id:"minecraft:rail"}] run scoreboard players operation #temp bmc.slot = @s bmc.slot
$execute if data entity @s Items[{Slot: $(slot)b, id:"minecraft:powered_rail"}] run scoreboard players operation #temp bmc.slot = @s bmc.slot
$execute if data entity @s Items[{Slot: $(slot)b, id:"minecraft:detector_rail"}] run scoreboard players operation #temp bmc.slot = @s bmc.slot
$execute if data entity @s Items[{Slot: $(slot)b, id:"minecraft:activator_rail"}] run scoreboard players operation #temp bmc.slot = @s bmc.slot

scoreboard players operation @s bmc.slot = #temp bmc.slot