#> chunkbuster:player/refresh
#
# @context player

# Initialize null triggers.
execute unless score @s ckb.run matches -2147483648.. run scoreboard players set @s ckb.run -2147483648

# Check for and re-enable triggers.

execute unless score @s ckb.run matches -2147483648 run function chunkbuster:player/run
scoreboard players enable @s ckb.run
