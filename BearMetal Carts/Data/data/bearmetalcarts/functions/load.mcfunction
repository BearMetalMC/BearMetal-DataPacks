# Create loader scoreboards
scoreboard objectives add bmc.create dummy

# Create placer scoreboards
scoreboard objectives add bmc.rail dummy
scoreboard objectives add bmc.slot dummy
scoreboard objectives add bmc.success dummy

# Create jumping scoreboards
scoreboard objectives add bmc.jump dummy
scoreboard players set #mult bmc.jump -1

# Create debug scoreboards
scoreboard objectives add bmc.debug dummy "BMC Debugger"
