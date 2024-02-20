execute at @e[type=chest_minecart,tag=bmc.placer] as @e[type=chest_minecart,tag=bmc.cart,sort=nearest,limit=1] run function bearmetalcarts:placer/placer_cart
# execute as @e[type=item_display,tag=bmc.placer] run data modify entity @s Rotation set from entity @e[tag=bmc.cart,sort=nearest,limit=1] Rotation
