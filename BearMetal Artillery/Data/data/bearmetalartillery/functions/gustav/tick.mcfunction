execute as @e[tag=bma.sg.cannon,tag=!bma.aimed] at @s at @e[tag=bma.sg.chassis,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=bma.sg.turret] at @s at @e[tag=bma.sg.cannon,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

scoreboard players remove @e[tag=bma.sg.cooldown] bma.cooldown 1
tag @e[scores={bma.cooldown=..0}] remove bma.sg.cooldown

scoreboard players remove @e[scores={bma.time_to_aim=2..}] bma.time_to_aim 1
scoreboard players remove @e[scores={bma.time_to_fire=2..}] bma.time_to_fire 1
scoreboard players remove @e[scores={bma.time_to_hit=2..}] bma.time_to_hit 1

execute as @e[scores={bma.time_to_aim=1}] at @s run function bearmetalartillery:gustav/aim
execute as @e[scores={bma.time_to_fire=61}] at @s run tellraw @a ["","[",{"selector":"@s"}," Crew] Firing in 3..."]
execute as @e[scores={bma.time_to_fire=41}] at @s run tellraw @a ["","[",{"selector":"@s"}," Crew] 2..."]
execute as @e[scores={bma.time_to_fire=21}] at @s run tellraw @a ["","[",{"selector":"@s"}," Crew] 1..."]
execute as @e[scores={bma.time_to_fire=1}] at @s run function bearmetalartillery:gustav/fire
execute as @e[scores={bma.time_to_hit=1}] at @s run function bearmetalartillery:gustav/hit
execute as @e[scores={bma.time_to_hit=33}] at @s run function bearmetalartillery:gustav/incoming_sound

execute as @e[tag=bma.smoke,tag=!bma.marked] at @s unless entity @e[type=snowball,distance=..2] run function bearmetalartillery:gustav/create_target

execute at @e[tag=bma.smoke,tag=bma.marked] as @e[tag=bma.sg.target,nbt={OnGround: 0b},distance=..2] run data merge entity @s {OnGround: true, NoGravity: true}
