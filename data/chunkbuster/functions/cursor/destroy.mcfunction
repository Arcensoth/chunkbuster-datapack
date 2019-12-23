#> chunkbuster:cursor/destroy

tellraw @a[tag=chunkbuster.admin] ["", {"text": "[Chunkbuster]", "color": "green"}, " ", "A cursor is being destroyed: ", {"nbt": "Item.tag._chunkbuster.cursor", "entity": "@s"}]

kill @s
