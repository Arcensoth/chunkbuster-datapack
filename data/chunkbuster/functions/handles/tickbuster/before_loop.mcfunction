#> chunkbuster:handles/tickbuster/before_loop
#
# @handles #tickbuster:before_loop

execute as @e[type=minecraft:snowball, tag=chunkbuster.cursor] at @s run function chunkbuster:cursor/before_loop
