#> chunkbuster:cursor/init
#
# @context cursor
#
# @scoreboard_args ckb.args
#   $cursor.create.xstart
#   $cursor.create.zstart
#   $cursor.create.xlength
#   $cursor.create.zlength

tag @s remove chunkbuster.__temp__.new_cursor

# round starting x to chunk coords and center in chunk
scoreboard players operation @s ckb.xstartblk = $cursor.create.xstart ckb.args
scoreboard players operation @s ckb.xstartblk /= $16 ckb.const
scoreboard players operation @s ckb.xstartblk *= $16 ckb.const
scoreboard players operation @s ckb.xstartblk += $8 ckb.const

# round starting z to chunk coords and center in chunk
scoreboard players operation @s ckb.zstartblk = $cursor.create.zstart ckb.args
scoreboard players operation @s ckb.zstartblk /= $16 ckb.const
scoreboard players operation @s ckb.zstartblk *= $16 ckb.const
scoreboard players operation @s ckb.zstartblk += $8 ckb.const

# calculate x length in chunks
scoreboard players operation @s ckb.xlengthchk = $cursor.create.xlength ckb.args
scoreboard players operation @s ckb.xlengthchk /= $16 ckb.const

# calculate z length in chunks
scoreboard players operation @s ckb.zlengthchk = $cursor.create.zlength ckb.args
scoreboard players operation @s ckb.zlengthchk /= $16 ckb.const

# initialize number of remaining chunks
scoreboard players operation @s ckb.xleftchk = @s ckb.xlengthchk
scoreboard players operation @s ckb.zleftchk = @s ckb.zlengthchk

# initialize next chunk position to the starting position
scoreboard players operation @s ckb.xnextblk = @s ckb.xstartblk
scoreboard players operation @s ckb.znextblk = @s ckb.zstartblk

# send to world spawn for safe-keeping
function chunkbuster:util/to_worldspawn

tellraw @a[tag=chunkbuster.admin] [{"text": "", "color": "gray"}, {"text": "[Chunkbuster]", "color": "green"}, " ", "Starting pre-generation for area ", {"nbt": "Item.tag._chunkbuster.cursor.name", "entity":"@s", "color": "aqua"}, " at: ", {"score": {"name": "@s", "objective": "ckb.xstartblk"}, "color": "yellow"}, " ", {"score": {"name": "@s", "objective": "ckb.zstartblk"}, "color": "yellow"}]
