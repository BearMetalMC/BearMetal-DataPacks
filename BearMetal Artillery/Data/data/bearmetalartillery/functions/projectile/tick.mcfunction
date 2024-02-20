execute as @e[tag=bma.new_projectile] at @s run function bearmetalartillery:projectile/start
execute as @e[tag=bma.projectile] at @s run function bearmetalartillery:projectile/fetch_vel

execute as @e[tag=bma.projectile] at @s run forceload remove ~-32 ~-32 ~32 ~32
execute as @e[tag=bma.projectile] at @s run forceload add ~-16 ~-16 ~16 ~16
