# AT AS @e
# gives @e motion based off of facing direction
# called with {scale:integer}

execute store result score @s bm.posX1 run data get entity @s Pos[0] 1000
execute store result score @s bm.posY1 run data get entity @s Pos[1] 1000
execute store result score @s bm.posZ1 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^.1

execute store result score @s bm.posX2 run data get entity @s Pos[0] 1000
execute store result score @s bm.posY2 run data get entity @s Pos[1] 1000
execute store result score @s bm.posZ2 run data get entity @s Pos[2] 1000

scoreboard players operation @s bm.posX2 -= @s bm.posX1
scoreboard players operation @s bm.posY2 -= @s bm.posY1
scoreboard players operation @s bm.posZ2 -= @s bm.posZ1

$scoreboard players set @s bm.vel_scale $(scale)

scoreboard players operation @s bm.posX2 *= @s bm.vel_scale
scoreboard players operation @s bm.posY2 *= @s bm.vel_scale
scoreboard players operation @s bm.posZ2 *= @s bm.vel_scale

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s bm.posX2
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s bm.posY2
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s bm.posZ2
