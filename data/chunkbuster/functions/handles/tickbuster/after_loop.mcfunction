#> chunkbuster:handles/tickbuster/after_loop
#
# @handles #tickbuster:after_loop

execute as @e[type=minecraft:snowball, tag=chunkbuster.cursor] at @s run function chunkbuster:cursor/after_loop
