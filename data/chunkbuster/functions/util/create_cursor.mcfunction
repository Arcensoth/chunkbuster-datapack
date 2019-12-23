#> chunkbuster:util/create_cursor
#
# @context any
#
# @storage_args chunkbuster:__args__/util/create_cursor
#   diameterx: int
#   diameterz: int
#   centerx: int
#   centerz: int

tellraw @a[tag=chunkbuster.admin] ["", {"text": "[Chunkbuster]", "color": "green"}, " ", "Creating a new cursor with arguments: ", {"nbt": "", "storage": "chunkbuster:__args__/util/create_cursor"}]

summon minecraft:snowball ~ 0 ~ {NoGravity: true, Invulnerable: true, Silent: true, Tags: ["chunkbuster.cursor", "chunkbuster.__temp__.new_cursor"], Item: {id: "minecraft:apple", Count: 1b, tag: {_chunkbuster: {cursor: {}}}}}

execute positioned ~ 0 ~ as @e[type=minecraft:snowball, distance=..0.01, tag=chunkbuster.__temp__.new_cursor] at @s run function chunkbuster:cursor/init
