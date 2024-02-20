# instead of using the marker directly as the target, summon an armor stand at world height and let it fall. This prevents cheaty usage underground/inside a building

summon armor_stand ~ 320 ~ {Tags: ["bma.sg.target"], CustomName: Spotter, Invisible: true}
tag @s add bma.marked