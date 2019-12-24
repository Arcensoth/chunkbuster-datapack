#> chunkbuster:cursor/loop
#
# Move the cursor to the next chunk and force it to generate.
#
# ckb.xstartblk / ckb.zstartblk
#   The x/z-coordinates of the starting position, in blocks.
# ckb.xnextblk / ckb.znextblk
#   The x/z-coordinates of the next chunk to be generated, in blocks.
# ckb.xleftchk / ckb.zleftchk
#   The number of steps remaining in the x/z-plane, in chunks.
#
# @context cursor

# The cursor is currently at world spawn. The first thing we need to do is move
# it to the next chunk to be generated.
execute store result entity @s Pos[0] double 1.0 run scoreboard players get @s ckb.xnextblk
execute store result entity @s Pos[2] double 1.0 run scoreboard players get @s ckb.znextblk

# NOTE At this point the function and cursor have desynchronized positions.

# Now that the cursor is in the chunk, we can generate it.
execute at @s run function chunkbuster:util/generate_chunk

# While we still have the cursor's context, teleport it back to world spawn for
# safe-keeping.
function chunkbuster:util/to_worldspawn

# Do all of our calculations for the next chunk.
function chunkbuster:cursor/step
