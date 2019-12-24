#> chunkbuster:cursor/init
#
# @context cursor
#
# @storage_args chunkbuster:__args__/util/create_cursor
#   x_diameter_in_chunks: int
#   z_diameter_in_chunks: int
#   x_center_in_chunks: int
#   z_center_in_chunks: int

tag @s remove chunkbuster.__temp__.new_cursor

# set constants
scoreboard players set $16 __const__ 16
scoreboard players set $8 __const__ 8

# keep original args
data modify entity @s Item.tag._chunkbuster.cursor.x_diameter_in_chunks set from storage chunkbuster:__args__/util/create_cursor x_diameter_in_chunks
data modify entity @s Item.tag._chunkbuster.cursor.z_diameter_in_chunks set from storage chunkbuster:__args__/util/create_cursor z_diameter_in_chunks
data modify entity @s Item.tag._chunkbuster.cursor.x_center_in_chunks set from storage chunkbuster:__args__/util/create_cursor x_center_in_chunks
data modify entity @s Item.tag._chunkbuster.cursor.z_center_in_chunks set from storage chunkbuster:__args__/util/create_cursor z_center_in_chunks

# x chunk
execute store result entity @s Item.tag._chunkbuster.cursor.x_radius_in_chunks int 0.5 run data get storage chunkbuster:__args__/util/create_cursor x_diameter_in_chunks
execute store result score $chunkbuster.cursor.init.x_rad_chunks __temp__ run data get entity @s Item.tag._chunkbuster.cursor.x_radius_in_chunks
execute store result score $chunkbuster.cursor.init.x_start_chunks __temp__ run data get entity @s Item.tag._chunkbuster.cursor.x_center_in_chunks
scoreboard players operation $chunkbuster.cursor.init.x_start_chunks __temp__ -= $chunkbuster.cursor.init.x_rad_chunks __temp__
execute store result entity @s Item.tag._chunkbuster.cursor.x_start_in_chunks int 1.0 run scoreboard players get $chunkbuster.cursor.init.x_start_chunks __temp__

# x block
scoreboard players operation $chunkbuster.cursor.init.x_start_blocks __temp__ = $chunkbuster.cursor.init.x_start_chunks __temp__
scoreboard players operation $chunkbuster.cursor.init.x_start_blocks __temp__ *= $16 __const__
scoreboard players operation $chunkbuster.cursor.init.x_start_blocks __temp__ += $8 __const__
execute store result entity @s Item.tag._chunkbuster.cursor.x_start_in_blocks int 1.0 run scoreboard players get $chunkbuster.cursor.init.x_start_blocks __temp__

# z chunk
execute store result entity @s Item.tag._chunkbuster.cursor.z_radius_in_chunks int 0.5 run data get storage chunkbuster:__args__/util/create_cursor z_diameter_in_chunks
execute store result score $chunkbuster.cursor.init.z_rad_chunks __temp__ run data get entity @s Item.tag._chunkbuster.cursor.z_radius_in_chunks
execute store result score $chunkbuster.cursor.init.z_start_chunks __temp__ run data get entity @s Item.tag._chunkbuster.cursor.z_center_in_chunks
scoreboard players operation $chunkbuster.cursor.init.z_start_chunks __temp__ -= $chunkbuster.cursor.init.z_rad_chunks __temp__
execute store result entity @s Item.tag._chunkbuster.cursor.z_start_in_chunks int 1.0 run scoreboard players get $chunkbuster.cursor.init.z_start_chunks __temp__

# z block
scoreboard players operation $chunkbuster.cursor.init.z_start_blocks __temp__ = $chunkbuster.cursor.init.z_start_chunks __temp__
scoreboard players operation $chunkbuster.cursor.init.z_start_blocks __temp__ *= $16 __const__
scoreboard players operation $chunkbuster.cursor.init.z_start_blocks __temp__ += $8 __const__
execute store result entity @s Item.tag._chunkbuster.cursor.z_start_in_blocks int 1.0 run scoreboard players get $chunkbuster.cursor.init.z_start_blocks __temp__

# init scores
execute store result score @s ckb.diamx run data get storage chunkbuster:__args__/util/create_cursor x_diameter_in_chunks
execute store result score @s ckb.diamz run data get storage chunkbuster:__args__/util/create_cursor z_diameter_in_chunks
scoreboard players set @s ckb.stepx 0
scoreboard players set @s ckb.stepz 0

# move to initial position at worldspawn
function chunkbuster:util/to_worldspawn

# notify admins
tellraw @a[tag=chunkbuster.admin] ["", {"text": "[Chunkbuster]", "color": "green"}, " ", "A cursor has been initialized: ", {"nbt": "Item.tag._chunkbuster.cursor", "entity": "@s"}]
