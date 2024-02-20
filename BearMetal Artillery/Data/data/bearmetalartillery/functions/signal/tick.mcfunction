execute as @e[type=snowball,nbt={Item: {tag: {smokeSignal: 1}}},tag=!bma.smoke.active] at @s run function bearmetalartillery:signal/throw

execute as @e[type=marker,tag=bma.smoke] at @s run function bearmetalartillery:signal/smoke