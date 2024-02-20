# Executed as chest_minecart


execute store result storage bearmetalcarts:slots slot int 1 run scoreboard players get @s bmc.slot
function bearmetalcarts:placer/check_slot with storage bearmetalcarts:slots
execute store result storage bearmetalcarts:slots slot int 1 run scoreboard players get @s bmc.slot
function bearmetalcarts:placer/attempt_place with storage bearmetalcarts:slots
