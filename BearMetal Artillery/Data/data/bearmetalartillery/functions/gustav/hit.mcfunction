# executed at as bmg.target
tellraw @a ["","[",{"selector":"@s"}," Crew] Direct hit!"]

summon creeper ~ ~ ~ {ExplosionRadius: 9, ignited: true, Fuse: 0}

particle explosion ~ ~ ~ 6 6 6 1 100 force

summon marker ~ ~ ~ {Tags: [bma.crater_smoke]}
summon marker ~ ~ ~ {Tags: [bma.crater_smoke]}
summon marker ~ ~ ~ {Tags: [bma.crater_smoke]}
summon marker ~ ~ ~ {Tags: [bma.crater_smoke]}
summon marker ~ ~ ~ {Tags: [bma.crater_smoke]}
summon marker ~ ~ ~ {Tags: [bma.crater_smoke]}
summon marker ~ ~ ~ {Tags: [bma.crater_smoke]}
summon marker ~ ~ ~ {Tags: [bma.crater_smoke]}

execute as @e[distance=..1,tag=bma.crater_smoke] store result score @s bma.smoke_time run random value 60..600

spreadplayers ~ ~ 1 12 false @e[tag=bma.crater_smoke,distance=..1]

scoreboard players set @s bma.time_to_hit 0

kill @s