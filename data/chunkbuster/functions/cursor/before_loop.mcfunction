#> chunkbuster:cursor/before_loop
#
# Prepare to resume chunk generation this tick by moving the cursor back to its
# previous position.
#
# @context cursor

# DELETEME
tellraw @a[tag=chunkbuster.admin, tag=chunkbuster.debug] [{"text": "", "color": "gray"}, "[chunkbuster:cursor/before_loop]", " ", "cursor position: ", {"nbt": "Pos[0]", "entity": "@s"}, " ", {"nbt": "Pos[2]", "entity": "@s"}]

# x

# start at origin block coords
execute store result score $chunkbuster.cursor.before_loop.blockx __temp__ run data get entity @s Item.tag._chunkbuster.cursor.x_start_in_blocks

# multiply step by 16
scoreboard players operation $chunkbuster.cursor.before_loop.stepx __temp__ = @s ckb.stepx
scoreboard players operation $chunkbuster.cursor.before_loop.stepx __temp__ *= $16 __const__

# add step to block coords
scoreboard players operation $chunkbuster.cursor.before_loop.blockx __temp__ += $chunkbuster.cursor.before_loop.stepx __temp__

# inject coord into entity pos
execute store result entity @s Pos[0] double 1.0 run scoreboard players get $chunkbuster.cursor.before_loop.blockx __temp__

# z
execute store result score $chunkbuster.cursor.before_loop.blockz __temp__ run data get entity @s Item.tag._chunkbuster.cursor.z_start_in_blocks
scoreboard players operation $chunkbuster.cursor.before_loop.stepz __temp__ = @s ckb.stepz
scoreboard players operation $chunkbuster.cursor.before_loop.stepz __temp__ *= $16 __const__
scoreboard players operation $chunkbuster.cursor.before_loop.blockz __temp__ += $chunkbuster.cursor.before_loop.stepz __temp__
execute store result entity @s Pos[2] double 1.0 run scoreboard players get $chunkbuster.cursor.before_loop.blockz __temp__

# DELETEME
tellraw @a[tag=chunkbuster.admin, tag=chunkbuster.debug] [{"text": "", "color": "gray"}, "[chunkbuster:cursor/before_loop.end]", " ", "cursor position: ", {"nbt": "Pos[0]", "entity": "@s"}, " ", {"nbt": "Pos[2]", "entity": "@s"}]
