tag @a[nbt={Inventory: [{tag: {bmHeavy: 1b}}]},tag=!bm.heavy] add bm.heavy

effect give @a[tag=bm.heavy] slowness infinite 1 true
effect clear @a[nbt=!{Inventory: [{tag: {bmHeavy: 1b}}]},tag=bm.heavy] slowness

tag @a[nbt=!{Inventory: [{tag: {bmHeavy: 1b}}]},tag=bm.heavy] remove bm.heavy

tag @a[nbt={Inventory: [{tag: {bmVeryHeavy: 1b}}]},tag=!bm.very_heavy] add bm.very_heavy

effect give @a[tag=bm.very_heavy] slowness infinite 3 true
effect clear @a[nbt=!{Inventory: [{tag: {bmVeryHeavy: 1b}}]},tag=bm.very_heavy] slowness

tag @a[nbt=!{Inventory: [{tag: {bmVeryHeavy: 1b}}]},tag=bm.very_heavy] remove bm.very_heavy