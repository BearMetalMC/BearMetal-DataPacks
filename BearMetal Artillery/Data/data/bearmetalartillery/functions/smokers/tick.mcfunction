scoreboard players remove @e[tag=bma.crater_smoke] bma.smoke_time 1

kill @e[scores={bma.smoke_time=..0},tag=bma.crater_smoke]

execute as @e[tag=bma.crater_smoke,scores={bma.to_smoke=3},type=marker] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 1 0 .05 0 force

execute as @e[tag=bma.crater_smoke] store result score @s bma.to_smoke run random value 0..3