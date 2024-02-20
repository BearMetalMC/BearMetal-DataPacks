# executed as at bma.sg.cannon

tellraw @a ["","[",{"selector":"@s"}," Crew] Firing"]

playsound bearmetal:artillery.distant master @a ~ ~ ~ 200 .1 .1
playsound bearmetal:artillery.near master @a ~ ~ ~ 5 1

particle explosion ^ ^ ^36 1 1 1 1 10 force

# trail of smoke
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00001 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.000009 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.000008 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.000007 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.000006 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.000005 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.000004 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.000003 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.000002 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.000001 0 force

particle poof ^ ^ ^36 ^ ^ ^1000000 0.0000095 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.0000085 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.0000075 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.0000065 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.0000055 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.0000045 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.0000035 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.0000025 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.0000015 0 force

particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000925 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000975 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000825 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000875 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000725 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000775 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000625 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000675 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000525 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000575 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000425 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000475 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000325 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000375 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000225 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000275 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000125 0 force
particle poof ^ ^ ^36 ^ ^ ^1000000 0.00000175 0 force

tag @s add bma.sg.cooldown
tag @s add compare
execute as @e[tag=bma.sg.target] at @s if score @s bma.target_id = @e[tag=compare,limit=1] bma.target_id run function bearmetalartillery:gustav/prepare_for_hit
tag @s remove compare
tag @s remove bma.aimed
scoreboard players set @s bma.time_to_fire 0
scoreboard players set @s bma.cooldown 6000