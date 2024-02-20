schedule function bearmetalcarts:placer/schedule 1s

execute as @e[type=marker,tag=bmc.placer_marker] at @s unless entity @e[distance=..1,tag=bmc.cart] run function bearmetalcarts:placer/delete_placer_cart

execute as @e[type=chest_minecart,tag=!bmc.cart] at @s if entity @e[type=item,nbt={Item: {id: "minecraft:dispenser", Count: 1b}},distance=..1] if entity @e[type=item,nbt={Item: {id: "minecraft:netherite_ingot", Count: 1b}},distance=..1] run function bearmetalcarts:placer/create_placer_cart
