execute store result score @s bmc.jump run data get entity @s Motion[0]
execute if score @s bmc.jump matches 0 store result score @s bmc.jump run data get entity @s Motion[2]

execute if score @s bmc.jump matches ..0 run scoreboard players operation @s bmc.jump *= #mult bmc.jump

execute if score @s bmc.jump matches 0.. if block ~ ~-0.1 ~-1 #rails[shape=ascending_south] run data modify entity @s Motion[1] set value 0.5d
execute if score @s bmc.jump matches 0.. if block ~ ~-0.1 ~1 #rails[shape=ascending_north] run data modify entity @s Motion[1] set value 0.5d
execute if score @s bmc.jump matches 0.. if block ~-1 ~-0.1 ~ #rails[shape=ascending_east] run data modify entity @s Motion[1] set value 0.5d
execute if score @s bmc.jump matches 0.. if block ~1 ~-0.1 ~ #rails[shape=ascending_west] run data modify entity @s Motion[1] set value 0.5d