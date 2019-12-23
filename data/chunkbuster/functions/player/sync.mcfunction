#> chunkbuster:player/sync
#
# @context player

# Make sure admins have their triggers available.
execute if entity @s[tag=chunkbuster.admin] run function chunkbuster:player/refresh

# All other players should have them disabled.
execute unless entity @s[tag=chunkbuster.admin] run function chunkbuster:player/disable
