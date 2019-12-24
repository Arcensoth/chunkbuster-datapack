#> chunkbuster:player/run
#
# @context player

# TODO use storage for more options

# Calculate length based on input.

execute if score @s ckb.run matches ..0 run scoreboard players set $cursor.create.xlength ckb.args 160
execute if score @s ckb.run matches ..0 run scoreboard players set $cursor.create.zlength ckb.args 160

execute unless score @s ckb.run matches ..0 run scoreboard players operation $cursor.create.xlength ckb.args = @s ckb.run
execute unless score @s ckb.run matches ..0 run scoreboard players operation $cursor.create.zlength ckb.args = @s ckb.run

# Load position as-is.
execute store result score $cursor.create.xstart ckb.args run data get entity @s Pos[0]
execute store result score $cursor.create.zstart ckb.args run data get entity @s Pos[2]

# Create a cursor.
function chunkbuster:util/create_cursor

# Reset the player's trigger.
scoreboard players set @s ckb.run -2147483648
