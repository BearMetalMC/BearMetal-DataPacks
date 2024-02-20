# AT AS snowball

# say throwing smoke signal

summon marker ~ ~ ~ {Tags: ["bma.smoke"]}

ride @e[type=marker,sort=nearest,limit=1] mount @s

tag @s add bma.smoke.active