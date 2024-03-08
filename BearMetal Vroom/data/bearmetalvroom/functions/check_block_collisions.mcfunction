##
 # check_block_collisions.mcfunction
 # AT AS bmv.steering
 #
 # Created by CyborgGrizzly.
##

execute if block ~ ~-0.0625 ~ air run scoreboard players operation @s bmv.up_down = @s bmv.step_height
execute unless block ~ ~ ~ air run scoreboard players operation @s bmv.up_down = @s bmv.step_height

execute if score @s bmv.up_down matches 1.. run function bearmetalvroom:up_down
