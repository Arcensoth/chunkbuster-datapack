#> chunkbuster:cursor/loop/wrapx
#
# @context cursor

# DELETEME
tellraw @a[tag=chunkbuster.admin, tag=chunkbuster.debug] [{"text": "", "color": "gray"}, "[chunkbuster:cursor/loop/wrapx]", " ", "cursor position: ", {"nbt": "Pos[0]", "entity": "@s"}, " ", {"nbt": "Pos[2]", "entity": "@s"}]

# step z and shift in z
scoreboard players add @s ckb.stepz 1
teleport ~ ~ ~16

# reset step x
scoreboard players set @s ckb.stepx 0

# alter x back to origin
data modify entity @s Pos[0] set from entity @s Item.tag._chunkbuster.cursor.x_start_in_blocks
