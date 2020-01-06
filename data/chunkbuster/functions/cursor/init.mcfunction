#> chunkbuster:cursor/init
#
# @context cursor
#
# @storage_args chunkbuster:pregen
#   area.name
#   area.xstart
#   area.zstart
#   area.xlength
#   area.zlength

tag @s remove chunkbuster.__temp__.new_cursor

data modify entity @s Item.tag._chunkbuster.cursor.area set from storage chunkbuster:pregen area

# round starting x to chunk coords and center in chunk
execute store result score @s ckb.xstartblk run data get storage chunkbuster:pregen area.xstart
scoreboard players operation @s ckb.xstartblk /= $16 ckb.const
scoreboard players operation @s ckb.xstartblk *= $16 ckb.const
scoreboard players operation @s ckb.xstartblk += $8 ckb.const

# round starting z to chunk coords and center in chunk
execute store result score @s ckb.zstartblk run data get storage chunkbuster:pregen area.zstart
scoreboard players operation @s ckb.zstartblk /= $16 ckb.const
scoreboard players operation @s ckb.zstartblk *= $16 ckb.const
scoreboard players operation @s ckb.zstartblk += $8 ckb.const

# calculate x length in chunks
execute store result score @s ckb.xlengthchk run data get storage chunkbuster:pregen area.xlength
scoreboard players operation @s ckb.xlengthchk /= $16 ckb.const

# calculate z length in chunks
execute store result score @s ckb.zlengthchk run data get storage chunkbuster:pregen area.zlength
scoreboard players operation @s ckb.zlengthchk /= $16 ckb.const

# initialize number of remaining chunks
scoreboard players operation @s ckb.xleftchk = @s ckb.xlengthchk
scoreboard players operation @s ckb.zleftchk = @s ckb.zlengthchk

# initialize next chunk position to the starting position
scoreboard players operation @s ckb.xnextblk = @s ckb.xstartblk
scoreboard players operation @s ckb.znextblk = @s ckb.zstartblk

# send to world spawn for safe-keeping
function chunkbuster:util/to_worldspawn

# TODO provide a confirmation prompt with the final values

tellraw @a[tag=chunkbuster.admin] [{"text": "", "color": "gray"}, {"text": "[Chunkbuster]", "color": "green"}, " ", "Starting pre-generation for ", {"score": {"name": "@s", "objective": "ckb.xlengthchk"}, "color": "yellow"}, "x", {"score": {"name": "@s", "objective": "ckb.zlengthchk"}, "color": "yellow"}, " chunk area ", {"nbt": "Item.tag._chunkbuster.cursor.area.name", "entity": "@s", "color": "aqua"}, " at block: ", {"score": {"name": "@s", "objective": "ckb.xstartblk"}, "color": "yellow"}, " ~ ", {"score": {"name": "@s", "objective": "ckb.zstartblk"}, "color": "yellow"}]

# update progress display immediately
scoreboard players set $progress.update ckb.temp 0
