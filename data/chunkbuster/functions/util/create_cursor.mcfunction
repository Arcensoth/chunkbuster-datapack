#> chunkbuster:util/create_cursor
#
# @context any
#
# @scoreboard_args ckb.args
#   $cursor.create.xstart
#   $cursor.create.zstart
#   $cursor.create.xlength
#   $cursor.create.zlength

summon minecraft:snowball ~ 0 ~ {NoGravity: true, Invulnerable: true, Silent: true, CustomName: '"chunkbuster.cursor"', Tags: ["chunkbuster.cursor", "chunkbuster.__temp__.new_cursor"]}

execute positioned ~ 0 ~ as @e[type=minecraft:snowball, distance=..0.01, tag=chunkbuster.__temp__.new_cursor] at @s run function chunkbuster:cursor/init
