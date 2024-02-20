# AT AS bma.smoke

scoreboard players add @s bma.smoke_time 1
execute if score @s bma.smoke_time matches 2000.. run kill @s

particle campfire_signal_smoke ~ ~ ~ ^ ^1000000 ^ 0.0000001 0 force