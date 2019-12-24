#> chunkbuster:cursor/after_loop
#
# Move the cursor back to world spawn for safe-keeping.
#
# @context cursor

# DELETEME
tellraw @a[tag=chunkbuster.admin, tag=chunkbuster.debug] [{"text": "", "color": "gray"}, "[chunkbuster:cursor/after_loop]", " ", "cursor position: ", {"nbt": "Pos[0]", "entity": "@s"}, " ", {"nbt": "Pos[2]", "entity": "@s"}]

function chunkbuster:util/to_worldspawn

# DELETEME
tellraw @a[tag=chunkbuster.admin, tag=chunkbuster.debug] [{"text": "", "color": "gray"}, "[chunkbuster:cursor/after_loop.end]", " ", "cursor position: ", {"nbt": "Pos[0]", "entity": "@s"}, " ", {"nbt": "Pos[2]", "entity": "@s"}]
