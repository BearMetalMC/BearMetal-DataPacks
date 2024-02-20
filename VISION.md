# Contents
- [Contents](#contents)
- [The Vision of all this](#the-vision-of-all-this)
- [Limitations](#limitations)
- [Packs and their goals](#packs-and-their-goals)
  - [BearMetal Grinder](#bearmetal-grinder)
    - [Features](#features)
  - [BearMetal Tech Ascension](#bearmetal-tech-ascension)
  - [Features](#features-1)
  - [BearMetal Carts](#bearmetal-carts)
    - [Features](#features-2)
  - [BearMetal Medieval Warfare](#bearmetal-medieval-warfare)
    - [Features](#features-3)
  - [BearMetal Magic](#bearmetal-magic)
    - [Features](#features-4)
  - [BearMetal Smoke and Steel](#bearmetal-smoke-and-steel)
    - [Features](#features-5)
  - [BearMetal Artillery](#bearmetal-artillery)
  - [BearMetal Railways](#bearmetal-railways)

# The Vision of all this

These datapacks are meant to allow for the creation of an all-out-warfare pack,
but can allow for picking and choosing different aspects. For example, I could
decide to go strictly for exceptionally difficult vanilla-ish survival with
BearMetal Grinder, however it would be required if I wanted to use BearMetal
Medieval Warfare.

Through all of this exists a few more tweak-based packs. For example, BearMetal
Carts and BearMetal Recipes exist purely for buffing/retooling vanilla
functionality - like copper trapdoors costing 6 blocks. These packs generally
won't be used in the greater arena of packs

# Limitations

A significant number of these will rely on features that are in snapshots as of 2/2024 (entity attributes such as scale,step height, etc), and will require (likely) 1.20.5, but currently are compatible with 1.20.3 and higher

# Packs and their goals

## BearMetal Grinder

BearMetal Grinder is pretty straightforward. EVERYTHING is harder to get, and
the progression is significantly different from vanilla. This is one of the few
that actually requires a mod that allows for NBT tags in crafting recipes - I
will probably fork [this](https://modrinth.com/mod/nbt-crafting) to maintain it
myself. I should look into 

### Features

- Trying to do anything without a tool of some sort gives you mining fatigue
- There are sticks and stones around, a la Terrafirmacraft that allow you to
  make basic tools
- There are no wooden tools - they are retextured to be stone, and stone tools
  are retextured to copper tools
- Furnaces don't exist, partially to allow for custom blocks, but primarily to
  change refining
- Refining is a process
  - Raw Copper gives a normal copper ingot, however that needs to be crafted
    with more ingots to produce an "ingot stack" (not the real name), which is
    then smelted a second time with a mold for fuel to produce an item (tool
    head, armor piece) (realizing this might not work since there is no way to make a recipe with a specific fuel)
  - Raw Iron gives an iron bloom, which needs to be heated and forged in a
    "forge" block. This generally requires more iron than typical iron recipes
  - Casting iron is required for some recipes, similar to copper
- Food is different
  - Early game, the only thing that you will be able to cook with is a campfire
  - Bread requires the intermediate step of making dough which can only be cooked in a smoker
- Husbandry is husbandry. It will be significantly harder to breed animals, but they will drop significantly more items, especially meat
- More time in the mid-game.
  - Mid-game is defined as when you acquire iron up until diamond
  - Endgame items are incredibly difficult to acquire, so there will be ways in the mid-game to prepare to make it easier
  - Resources should start being more plentiful to aid preparation, but not so plentiful that you feel like you don't need to get to endgame
  - Beacons should be feasible to get at this point
- More powerful lategame
  - Diamonds don't always drop from blocks, but their recipes are largely the same. Fortune 3 would give roughly a 50% chance of gaining a single diamond
  - Diamond armor gives speed and jump height buffs
  - Netherite armor gives strength and health buffs
  - Both give mining speed boosts (always instamine baby!)
  - I would like to know if there is a way to make custom beacons
- Mobs scale and don't drop any items

## BearMetal Tech Ascension

It's basically just a proper tech tree. You can only craft recipes when they unlock, and you can only unlock them if you've unlocked their prereqs. Using this as a base should allow for other packs to add their own advancement. Ideally, this will be optional for other packs

## Features

- Adds a "researcher" that generates research points
  - Feeding the researcher better items gives more points
- Adds a "research table" that allows you to spend those points to unlock recipes

## BearMetal Carts

Enhanced features for vanilla carts, making them far more useful than usual

### Features

- Can make chunkloading carts that can go long distances autonomously
- Placer carts that lay track automatically
  - Currently fairly "dumb" but I want to make it so that it can go overland automatically, laying ballast as needed, and navigating to a given x,z coord
- I have plans for a ticket system that allow destination selection, but it is quite complex and I haven't fully figured out how I want to do it
- Plans for (optional) waystone carts that allow you to to teleport to a cart temporarily for resupply 
- Basic minecart trains

## BearMetal Medieval Warfare

Adds siege weapons and weaponizes horses! An extension of [BearMetal Grinder](#bearmetal-grinder) that can give a lot of flavor to the mid-game, especially when played on a server

### Features

- Catapult, a relatively short ranged siege artillery
- Balista, a siege weapon with little destruction, but very effective against other players. Could be set as automated defense
- Lances, an addition to horse armor that make the horse deal damage directly in front of it while moving
- Castle building features
  - Portcullis, an animated lifted gate that can be set to open automatically for team members. Can also be opened manually
  - Drawbridge, an animated drawbridge that can be set to open automatically for team members. Can also be opened manually

## BearMetal Magic

Spells! Wands! Staffs! Witchery! Should be compatible with [BearMetal Medieval Warfare](#bearmetal-medieval-warfare) and [BearMetal Grinder](#bearmetal-grinder), but should not require either of them

### Features

- Different classes of caster
  - Wizard
    - Has a spellbook that they can copy spells from. Spells can be found in dungeons and combined with the spell book in a writing desk
    - Can hold a focus to cast stronger versions of the spell
    - Casting is done by opening their book to select a spell, then right clicking with their wand
    - Spells cost mana
  - Sorceror
    - Gains spells randomly. Has a limit of what spells they can wield at once, which can be increased, starting at one
    - Casts spells using item from inventory
    - Meditation allows them to prepare new spells
    - Spells cost mana
  - Witch
    - Spells are crafted at a cauldron
    - The only limitation is the amount of items they can carry
    - Crafting spells costs mana
    - Anyone can cast a witch spell, but the witch can do it right and therefore has higher effectiveness
- Enchanting is done differently, at a new enchanting table. There will be enchanting specific items to be found in dungeons that allow you to enchant items as you require
- I want to try and see if I can conquer structure generation to create wizard towers and better witch huts. Custom dungeons FTW

## BearMetal Smoke and Steel

The discovery of gunpowder led to a revolution of arms. An extension of [BearMetal Grinder](#bearmetal-grinder) that can completely change late-mid- early-late-game. This will alo require a proper tech tree, so will require [BearMetal Tech Ascension](#bearmetal-tech-ascension)

### Features

- Gunpowder can be crafted with sulphur, which can be obtained from the nether - it replaces nether gold
- Guns of varying types become available with research
  - Start at simple musket
  - Gain cannons
  - Discover rifles
  - Discover slightly better cannons
  - Discover simple pistol
  - Discover better pistol
  - Discover automatic weapons with high failer probability
  - Discover long range rifles
  - Discover better automatic weapons
  - Discover best automatic weapons
- Ammunition is crafted, but immediately goes into a virtual inventory or a scoreboard
- Genades!
- Flamethrowers!
  
## BearMetal Artillery

The biggest gunz around! An extension of [BearMetal Grinder](#bearmetal-grinder) that really enhances late-game with big gunz. Could be used with [BearMetal Railways](#bearmetal-railways) to allow the railway guns to move along tracks made with it. Requires [BearMetal Smoke and Steel](#bearmetal-smoke-and-steel)

- Smaller guns can be built in an "assembly station"
- Larger guns start out as multiblock structures if I can figure that out
- Start out by unlocking small mortars with shorter range
- Unlock larger guns
- Unlock rail mounted guns
- Unlock Schwerer Gustav
- Would like a manual fire mode for the smaller guns if possible, maybe a targeting circle appears where it would hit
- Different smoke signals for each type of gun
- Barrage mode that fires all available guns at target 

## BearMetal Railways