#> chunkbuster:cursor/loop
#
# Move the cursor to the next chunk and force it to generate.
#
# @context cursor

# step x
scoreboard players add @s ckb.stepx 1

# if x isn't wrapping, move to next chunk in x direction
execute unless score @s ckb.stepx >= @s ckb.diamx run teleport ~16 ~ ~

# otherwise, if x is wrapping, do a bunch of other stuff
execute if score @s ckb.stepx >= @s ckb.diamx run function chunkbuster:cursor/loop/wrapx

# if we're not done, generate this chunk
execute unless score @s ckb.stepz >= @s ckb.diamz run function chunkbuster:cursor/loop/generate

# otherwise, if we are done, destroy the cursor
execute if score @s ckb.stepz >= @s ckb.diamz run function chunkbuster:cursor/destroy
