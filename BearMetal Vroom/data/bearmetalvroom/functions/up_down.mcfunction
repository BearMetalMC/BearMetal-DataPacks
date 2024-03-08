##
 # up_down.mcfunction
 # AS AT bmv.steering 
 #
 # Created by CyborgGrizzly.
##

execute store success score @s bmv.successfully_moved if block ~ ~-0.0625 ~ air run tp @s ~ ~-0.0625 ~
execute store success score @s bmv.successfully_moved unless block ~ ~ ~ air run tp @s ~ ~0.0625 ~
scoreboard players remove @s bmv.up_down 1

execute if score @s bmv.successfully_moved matches 1.. if score @s bmv.up_down matches 1.. run function bearmetalvroom:up_down

# execute unless score @s bmv.up_down matches 1.. if block 