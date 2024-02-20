# executed as bma.sg.cannon
execute store result score @s bma.target_id run scoreboard players get #id bma.target_id
execute store result score @e[tag=bma.sg.target,limit=1,sort=random] bma.target_id run scoreboard players get #id bma.target_id
scoreboard players add #id bma.target_id 1

tag @s add compare

execute at @s as @e[tag=bma.sg.target,tag=!bma.marked] if score @s bma.target_id = @e[tag=compare,limit=1] bma.target_id facing entity @s feet rotated ~ -45 run tag @s add bma.marked
execute at @s as @e[tag=bma.sg.target] if score @s bma.target_id = @e[tag=compare,limit=1] bma.target_id facing entity @s feet rotated ~ -45 run tp @e[tag=compare,limit=1] ~ ~ ~ ~ ~
tag @s remove compare
tag @s add bma.aimed

tellraw @a ["","[",{"selector":"@s"}," Crew] Calibrating sights"]
tellraw @a ["","[",{"selector":"@s"}," Crew] Adjusting elevation"]

scoreboard players remove @s bma.time_to_aim 1
scoreboard players set @s bma.time_to_fire 200
