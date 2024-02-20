advancement revoke @s only bearmetalartillery:crafting/signal_grenade

execute store result score @s bma.signal_craft run clear @s knowledge_book

execute if score @s bma.signal_craft matches 1.. run function bearmetalartillery:crafting/give_signal
