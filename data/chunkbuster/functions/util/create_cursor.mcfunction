#> chunkbuster:util/create_cursor
#
# @context any
#
# @storage_args chunkbuster:pregen
#   area.name
#   area.xstart
#   area.zstart
#   area.xlength
#   area.zlength

summon minecraft:snowball ~ 0 ~ {NoGravity: true, Invulnerable: true, Silent: true, CustomName: '[{"text": "chunkbuster.cursor", "color": "green"}]', Item: {id: "minecraft:apple", Count: 1b, tag: {_chunkbuster: {cursor: {}}}}, Tags: ["chunkbuster.cursor", "chunkbuster.__temp__.new_cursor"]}

execute positioned ~ 0 ~ as @e[type=minecraft:snowball, distance=..0.01, tag=chunkbuster.__temp__.new_cursor] at @s run function chunkbuster:cursor/init
