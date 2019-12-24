#> chunkbuster:player/run
#
# @context player

# Calculate arguments based on input.

execute if score @s ckb.run matches ..0 run scoreboard players set $chunkbuster.player.run.xdiam __temp__ 256
execute if score @s ckb.run matches ..0 run scoreboard players set $chunkbuster.player.run.zdiam __temp__ 256

execute unless score @s ckb.run matches ..0 run scoreboard players operation $chunkbuster.player.run.xdiam __temp__ = @s ckb.run
execute unless score @s ckb.run matches ..0 run scoreboard players operation $chunkbuster.player.run.zdiam __temp__ = @s ckb.run

# Load arguments into storage.
# NOTE We divide values by 16 to get chunk coords.
execute store result storage chunkbuster:__args__/util/create_cursor x_diameter_in_chunks int 0.0625 run scoreboard players get $chunkbuster.player.run.xdiam __temp__
execute store result storage chunkbuster:__args__/util/create_cursor z_diameter_in_chunks int 0.0625 run scoreboard players get $chunkbuster.player.run.zdiam __temp__
execute store result storage chunkbuster:__args__/util/create_cursor x_center_in_chunks int 0.0625 run data get entity @s Pos[0]
execute store result storage chunkbuster:__args__/util/create_cursor z_center_in_chunks int 0.0625 run data get entity @s Pos[2]

# Create a cursor.
function chunkbuster:util/create_cursor

# Reset the player's trigger.
scoreboard players set @s ckb.run -2147483648
