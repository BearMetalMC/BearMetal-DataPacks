##
 # main.mcfunction
 # bearmetalvroom
 #
 # Created by CyborgGrizzly.
##


# move the damn thing
execute as @e[tag=bmv.steering] at @s run function bearmetalvroom:move



execute as @e[type=armor_stand,tag=bmv.summon_car] at @s run function bearmetalvroom:summon_car