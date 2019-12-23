#> chunkbuster:cursor/init
#
# @context cursor
#
# @storage_args chunkbuster:__args__/util/create_cursor
#   diameterx: int
#   diameterz: int
#   centerx: int
#   centerz: int

tag @s remove chunkbuster.__temp__.new_cursor

# Preserve original arguments.
data modify entity @s Item.tag._chunkbuster.cursor.diameterx set from storage chunkbuster:__args__/util/create_cursor diameterx
data modify entity @s Item.tag._chunkbuster.cursor.diameterz set from storage chunkbuster:__args__/util/create_cursor diameterz
data modify entity @s Item.tag._chunkbuster.cursor.centerx set from storage chunkbuster:__args__/util/create_cursor centerx
data modify entity @s Item.tag._chunkbuster.cursor.centerz set from storage chunkbuster:__args__/util/create_cursor centerz

# Calculate radius and start x.
execute store result entity @s Item.tag._chunkbuster.cursor.radiusx int 0.5 run data get storage chunkbuster:__args__/util/create_cursor diameterx
execute store result score $chunkbuster.cursor.init.radiusx __temp__ run data get entity @s Item.tag._chunkbuster.cursor.radiusx
execute store result score $chunkbuster.cursor.init.startx __temp__ run data get entity @s Item.tag._chunkbuster.cursor.centerx
scoreboard players operation $chunkbuster.cursor.init.startx __temp__ -= $chunkbuster.cursor.init.radiusx __temp__
execute store result entity @s Item.tag._chunkbuster.cursor.startx int 1.0 run scoreboard players get $chunkbuster.cursor.init.startx __temp__

# Calculate radius and start z.
execute store result entity @s Item.tag._chunkbuster.cursor.radiusz int 0.5 run data get storage chunkbuster:__args__/util/create_cursor diameterz
execute store result score $chunkbuster.cursor.init.radiusz __temp__ run data get entity @s Item.tag._chunkbuster.cursor.radiusz
execute store result score $chunkbuster.cursor.init.startz __temp__ run data get entity @s Item.tag._chunkbuster.cursor.centerz
scoreboard players operation $chunkbuster.cursor.init.startz __temp__ -= $chunkbuster.cursor.init.radiusz __temp__
execute store result entity @s Item.tag._chunkbuster.cursor.startz int 1.0 run scoreboard players get $chunkbuster.cursor.init.startz __temp__

# Initialize scores.
execute store result score @s ckb.diamx run data get storage chunkbuster:__args__/util/create_cursor diameterx
execute store result score @s ckb.diamz run data get storage chunkbuster:__args__/util/create_cursor diameterz
scoreboard players set @s ckb.stepx 0
scoreboard players set @s ckb.stepz 0

# Move to initial position at worldspawn.
function chunkbuster:util/to_worldspawn

# Notify admins.
tellraw @a[tag=chunkbuster.admin] ["", {"text": "[Chunkbuster]", "color": "green"}, " ", "A cursor has been initialized: ", {"nbt": "Item.tag._chunkbuster.cursor", "entity": "@s"}]
