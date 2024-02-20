give @s snowball{CustomModelData: 1, smokeSignal: 1}
scoreboard players remove @s bma.signal_craft 1
execute if score @s bma.signal_craft matches 1.. run function bearmetalartillery:crafting/give_signal