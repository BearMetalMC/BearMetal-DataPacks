##
 # summon_car.mcfunction
 # AT AS marker armor stand, tagged bmv.summon_car
 # 
 # Created by CyborgGrizzly.
##

summon item_display ~ ~ ~ {item: {id: "stone", Count: 1}, Tags: [bmv.vehicle, bmv.ref, bmv.part], teleport_duration: 1}
summon item_display ~ ~ ~ {item: {id: "cobblestone", Count: 1}, Tags: [bmv.driver, bmv.part], teleport_duration: 1}
summon item_display ~ ~ ~3 {Tags: [bmv.front, bmv.part]}
summon item_display ~ ~ ~3 {item: {id: "dirt", Count: 1}, Tags: [bmv.steering, bmv.ref, bmv.part], teleport_duration: 1}
# summon pig ~ ~ ~ {NoAI: true, Invulnerable: true, Saddle: true, DeathLootTable: "", Silent: true}
scoreboard players set @e[tag=bmv.part,predicate=!bearmetalvroom:has_id] bmv.id 0
ride @e[type=pig,limit=1,scores={bmv.id=0}] mount @e[tag=bmv.driver,limit=1,sort=nearest]
execute as @e[tag=bmv.steering,scores={bmv.id=0}] at @s run ride @e[tag=bmv.front,limit=1,sort=nearest] mount @s
scoreboard players set @e[tag=bmv.ref,scores={bmv.id=0}] bmv.step_height 8
scoreboard players operation @e[tag=bmv.part,scores={bmv.id=0}] bmv.id = id bmv.id
scoreboard players add id bmv.id 1
kill @s