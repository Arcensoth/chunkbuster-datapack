#> chunkbuster:cursor/step
#
# Cancel pre-generation by removing then cursor.
#
# @context cursor

tellraw @a[tag=chunkbuster.admin] [{"text": "", "color": "red"}, {"text": "[Chunkbuster]", "color": "green"}, " ", "Cancelled pre-generation for ", {"score": {"name": "@s", "objective": "ckb.xlengthchk"}, "color": "yellow"}, "x", {"score": {"name": "@s", "objective": "ckb.zlengthchk"}, "color": "yellow"}, " chunk area ", {"nbt": "Item.tag._chunkbuster.cursor.area.name", "entity":"@s", "color": "aqua"}, " at block: ", {"score": {"name": "@s", "objective": "ckb.xnextblk"}, "color": "yellow"}, " ~ ", {"score": {"name": "@s", "objective": "ckb.znextblk"}, "color": "yellow"}]

kill @s
