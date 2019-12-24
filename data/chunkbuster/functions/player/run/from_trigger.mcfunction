#> chunkbuster:player/run/from_trigger
#
# @context player

# Clear any existing arguments.
data modify storage chunkbuster:pregen area set value {}

# Set a default name for the area.
data modify storage chunkbuster:pregen area.name set value "Unnamed Area"

# Use the player's position as the center of the area.

# calculate radius
scoreboard players operation $player.run.radius ckb.temp = @s ckb.run
scoreboard players operation $player.run.radius ckb.temp /= $2 ckb.const

# x
execute store result score $player.run.xstart ckb.temp run data get entity @s Pos[0]
scoreboard players operation $player.run.xstart ckb.temp -= $player.run.radius ckb.temp
execute store result storage chunkbuster:pregen area.xstart int 1.0 run scoreboard players get $player.run.xstart ckb.temp

# z
execute store result score $player.run.zstart ckb.temp run data get entity @s Pos[2]
scoreboard players operation $player.run.zstart ckb.temp -= $player.run.radius ckb.temp
execute store result storage chunkbuster:pregen area.zstart int 1.0 run scoreboard players get $player.run.zstart ckb.temp

# Length in both directions is just the value of the trigger.
execute store result storage chunkbuster:pregen area.xlength int 1.0 run scoreboard players get @s ckb.run
execute store result storage chunkbuster:pregen area.zlength int 1.0 run scoreboard players get @s ckb.run

# Validate arguments and proceed.
function chunkbuster:player/run/validate
