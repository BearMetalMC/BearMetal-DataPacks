schedule function bearmetal:item/persist 60s

execute as @e[type=item,nbt={Item: {tag: {noDespawn: 1b}}}] run data merge entity @s {Age: -32768}