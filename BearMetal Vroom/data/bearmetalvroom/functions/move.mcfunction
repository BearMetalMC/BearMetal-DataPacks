##
 # move.mcfunction
 # AT AS bmv.steering 
 #
 # Created by CyborgGrizzly.
##

tp @s ^ ^ ^.1 ~1 ~

scoreboard players operation #temp bmv.id = @s bmv.id
# scoreboard players operation @e[tag=bmv.ref] bmv.id -= #temp bmv.id
execute as @e[tag=bmv.ref,scores={bmv.id=1}] at @s run function bearmetalvroom:check_block_collisions


# position rear wheels behind front wheels
execute as @e[tag=bmv.vehicle,scores={bmv.id=1}] at @s run tp @s ~ ~ ~ facing entity @e[tag=bmv.front,scores={bmv.id=1},limit=1]
execute as @e[tag=bmv.front,scores={bmv.id=1}] at @s rotated as @e[tag=bmv.vehicle,scores={bmv.id=1},limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=bmv.front,scores={bmv.id=1}] at @s run tp @e[tag=bmv.vehicle,limit=1,scores={bmv.id=1}] ^ ^ ^-3

# position driver seats
execute as @e[tag=bmv.vehicle,scores={bmv.id=1}] at @s rotated as @s as @e[type=item_display,tag=bmv.driver,sort=nearest,limit=1] run tp @s ^1.5 ^ ^1.5 ~ ~

# scoreboard players operation @e[tag=bmv.ref] bmv.id += #temp bmv.id


# point steering at target dir
# tp @s ~ ~ ~ ~1 ~