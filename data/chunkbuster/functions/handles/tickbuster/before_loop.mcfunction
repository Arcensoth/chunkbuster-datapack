#> chunkbuster:handles/tickbuster/before_loop
#
# @handles #tickbuster:before_loop

# set constants
scoreboard players set $16 __const__ 16
scoreboard players set $8 __const__ 8

execute as @e[type=minecraft:snowball, tag=chunkbuster.cursor] at @s run function chunkbuster:cursor/before_loop
