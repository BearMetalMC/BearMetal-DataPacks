schedule function bearmetalartillery:gustav/schedule 3s

execute if entity @e[tag=bma.sg.target,tag=!bma.marked,nbt={OnGround: 1b}] if entity @e[tag=bma.sg.cannon,tag=!bma.sg.active,tag=!bma.sg.cooldown] run function bearmetalartillery:gustav/activate