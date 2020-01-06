#> chunkbuster:cursor/finish
#
# @context cursor

tellraw @a[tag=chunkbuster.admin] [{"text": "", "color": "gray"}, {"text": "[Chunkbuster]", "color": "green"}, " ", "Finished pre-generation for ", {"score": {"name": "@s", "objective": "ckb.xlengthchk"}, "color": "yellow"}, "x", {"score": {"name": "@s", "objective": "ckb.zlengthchk"}, "color": "yellow"}, " chunk area ", {"nbt": "Item.tag._chunkbuster.cursor.area.name", "entity":"@s", "color": "aqua"}, " at block: ", {"score": {"name": "@s", "objective": "ckb.xnextblk"}, "color": "yellow"}, " ~ ", {"score": {"name": "@s", "objective": "ckb.znextblk"}, "color": "yellow"}]

function chunkbuster:cursor/destroy
