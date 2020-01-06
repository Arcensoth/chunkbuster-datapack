#> chunkbuster:handles/tickbuster/vote
#
# @handles #tickbuster:vote

# we'll use this again later, too
scoreboard players set $active ckb.temp 0
execute if entity @e[type=minecraft:snowball, tag=chunkbuster.cursor] run scoreboard players set $active ckb.temp 1

execute if score $active ckb.temp matches 1.. run function tickbuster:api/vote/in
