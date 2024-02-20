tag @s add bmc.cart
tag @s add bmc.placer
kill @e[type=item,nbt={Item: {id: "minecraft:dispenser", Count: 1b}}]
kill @e[type=item,nbt={Item: {id: "minecraft:netherite_ingot", Count: 1b}}]
scoreboard players set @s bmc.slot 0

execute summon marker run data merge entity @s {Tags: ["bmc.placer_marker"]}
ride @e[tag=bmc.placer_marker,sort=nearest,limit=1] mount @s
data merge entity @s {CustomDisplayTile: 1b, DisplayOffset: 12, DisplayState: {Name: "tripwire_hook", Properties: {attached: "false", powered: "true", facing: "north"}}}

playsound minecraft:block.amethyst_block.chime block @a[distance=..10] ~ ~ ~ 200
particle minecraft:sweep_attack ~ ~1 ~
particle minecraft:campfire_cosy_smoke ~ ~2 ~ 1 1 1 .5 7