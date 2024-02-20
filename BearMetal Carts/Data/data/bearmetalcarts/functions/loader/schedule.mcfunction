schedule function bearmetalcarts:loader/schedule 1s
execute as @e[tag=bmc.loader] at @s run function bearmetalcarts:loader/handle_chunkloading
execute as @e[type=item_display,tag=bmc.loader] at @s unless entity @e[distance=..1,tag=bmc.cart] run function bearmetalcarts:loader/delete_loader_cart

# This will need to be refactored
execute as @e[type=#bearmetalcarts:carts,type=!tnt_minecart,tag=!bmc.cart] at @s if entity @e[type=item,nbt={Item: {id: "minecraft:beacon", Count: 1b}},distance=..1] if entity @e[type=item,nbt={Item: {id: "minecraft:lodestone", Count: 1b}},distance=..1] run function bearmetalcarts:loader/create_loader_cart
