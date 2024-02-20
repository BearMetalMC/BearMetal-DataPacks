# AT AS bma.sg.cannon

tag @s add bma.sg.active
# tellraw @a [{"text": "["},{"type": "selector", "selector":"@s"},{"text": " Crew]: Target acquired"}]
tellraw @a ["","[",{"selector":"@s"}," Crew] Target acquired"]
# tellraw @a "[Schwerer Gustav Crew] Target acquired"

scoreboard players set @s bma.time_to_aim 60