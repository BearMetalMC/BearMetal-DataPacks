# AT AS bma.sg.cannon

tag @e[tag=bma.smoke,tag=!bma.sg.target,limit=1] add bma.sg.target

# tellraw @a [{"text": "["},{"type": "selector", "selector":"@s"},{"text": " Crew]: Target acquired"}]
tellraw @a ["","[",{"selector":"@s"}," Crew] Target acquired"]
# tellraw @a "[Schwerer Gustav Crew] Target acquired"

scoreboard players set @s bma.time_to_aim 60