##
 # main.mcfunction
 # 
 #
 # Created by CyborgGrizzly.
##

execute as @e[type=#bearmetalmobs:spiders,tag=!bm.small] run function bearmetalmobs:small_spiders

execute as @a at @s run damage @e[distance=..1,type=#bearmetalmobs:spiders,limit=1] 1 player_attack by @s
# execute as @a at @s run kill @e[distance=..1,type=#bearmetalmobs:spiders]

team join peaceful @a[team=!peaceful]