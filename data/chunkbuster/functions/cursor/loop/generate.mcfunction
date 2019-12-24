#> chunkbuster:cursor/loop/generate
#
# @context cursor

# DELETEME
tellraw @a[tag=chunkbuster.admin, tag=chunkbuster.debug] [{"text": "", "color": "gray"}, "[chunkbuster:cursor/loop/generate]", " ", "cursor position: ", {"nbt": "Pos[0]", "entity": "@s"}, " ", {"nbt": "Pos[2]", "entity": "@s"}]

function chunkbuster:util/generate_chunk
