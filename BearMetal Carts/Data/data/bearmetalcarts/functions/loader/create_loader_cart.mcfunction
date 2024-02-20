tag @s add bmc.cart
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}}]

summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:red_stained_glass",Count:1,tag:{CustomModelData:1}},item_display:head,Tags:[bmc.loader]}
# I don't know why, but this seems to be the only way to make the transform work?
data merge entity @e[type=item_display,sort=nearest,limit=1,tag=bmc.loader] {transformation:{translation:[0,1,0]}}

execute as @e[type=item_display,sort=nearest,limit=1,tag=bmc.loader] at @s store success score #loader bmc.create run ride @s mount @e[type=minecraft:minecart,sort=nearest,limit=1,distance=0]
execute unless score #loader bmc.create matches 1 as @e[type=item_display,sort=nearest,limit=1,tag=bmc.loader] at @s store success score #loader bmc.create run ride @s mount @e[type=minecraft:furnace_minecart,sort=nearest,limit=1,distance=0]
execute unless score #loader bmc.create matches 1 as @e[type=item_display,sort=nearest,limit=1,tag=bmc.loader] at @s store success score #loader bmc.create run ride @s mount @e[type=minecraft:chest_minecart,sort=nearest,limit=1,distance=0]
execute unless score #loader bmc.create matches 1 as @e[type=item_display,sort=nearest,limit=1,tag=bmc.loader] at @s store success score #loader bmc.create run ride @s mount @e[type=minecraft:hopper_minecart,sort=nearest,limit=1,distance=0]

scoreboard players reset #loader

playsound minecraft:block.amethyst_block.chime block @a[distance=..10] ~ ~ ~ 200
particle minecraft:sweep_attack ~ ~1 ~
particle minecraft:campfire_cosy_smoke ~ ~2 ~ 1 1 1 1 7