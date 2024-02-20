say Running CustomModelData

execute store result storage bearmetal:cmd CustomModelData int 1 run scoreboard players get @s bm.cmd
item modify entity @s weapon.mainhand bearmetal:cmd

data remove storage bearmetal:cmd CustomModelData
scoreboard players reset @s bm.cmd