#> chunkbuster:cursor/step
#
# Advance the cursor's state and calculate the coordinates of the next chunk.
#
# @context cursor

# Check whether we're stepping in the x or z direction.
scoreboard players operation $stepx ckb.temp = @s ckb.xleftchk
execute if score $stepx ckb.temp matches 1.. run function chunkbuster:cursor/step/x
execute unless score $stepx ckb.temp matches 1.. run function chunkbuster:cursor/step/z
