#> chunkbuster:player/run
#
# @context player

# Run the proper procedure depending on how the player used the trigger.
execute if score @s ckb.run matches ..0 run function chunkbuster:player/run/from_storage
execute unless score @s ckb.run matches ..0 run function chunkbuster:player/run/from_trigger

# Reset the player's trigger.
scoreboard players set @s ckb.run -2147483648
