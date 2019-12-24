#> chunkbuster:cursor/destroy

# DELETEME
tellraw @a[tag=chunkbuster.admin, tag=chunkbuster.debug] [{"text": "", "color": "gray"}, "[chunkbuster:cursor/destroy]", " ", "cursor position: ", {"nbt": "Pos[0]", "entity": "@s"}, " ", {"nbt": "Pos[2]", "entity": "@s"}]

tellraw @a[tag=chunkbuster.admin] ["", {"text": "[Chunkbuster]", "color": "green"}, " ", "A cursor is being destroyed: ", {"nbt": "Item.tag._chunkbuster.cursor", "entity": "@s"}]

kill @s
