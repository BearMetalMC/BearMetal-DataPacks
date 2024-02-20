schedule function bearmetal:check 1s replace

execute as @a[scores={bm.cmd=1..}] run function bearmetal:cmd
scoreboard players enable @a bm.cmd