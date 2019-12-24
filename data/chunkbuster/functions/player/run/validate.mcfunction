#> chunkbuster:player/run/validate
#
# @context player

# Verify that all required arguments are present.

scoreboard players set $player.run.valid ckb.temp 1

# area.name
execute unless data storage chunkbuster:pregen area.name run scoreboard players set $player.run.valid ckb.temp 0
execute unless data storage chunkbuster:pregen area.name run tellraw @s [{"text": "", "color": "red"}, {"text": "[Chunkbuster]", "color": "green"}, " ", "Missing an argument: ", {"text": "area.name", "color": "dark_red"}]

# area.xstart
execute unless data storage chunkbuster:pregen area.xstart run scoreboard players set $player.run.valid ckb.temp 0
execute unless data storage chunkbuster:pregen area.xstart run tellraw @s [{"text": "", "color": "red"}, {"text": "[Chunkbuster]", "color": "green"}, " ", "Missing an argument: ", {"text": "area.xstart", "color": "dark_red"}]

# area.zstart
execute unless data storage chunkbuster:pregen area.zstart run scoreboard players set $player.run.valid ckb.temp 0
execute unless data storage chunkbuster:pregen area.zstart run tellraw @s [{"text": "", "color": "red"}, {"text": "[Chunkbuster]", "color": "green"}, " ", "Missing an argument: ", {"text": "area.zstart", "color": "dark_red"}]

# area.xlength
execute unless data storage chunkbuster:pregen area.xlength run scoreboard players set $player.run.valid ckb.temp 0
execute unless data storage chunkbuster:pregen area.xlength run tellraw @s [{"text": "", "color": "red"}, {"text": "[Chunkbuster]", "color": "green"}, " ", "Missing an argument: ", {"text": "area.xlength", "color": "dark_red"}]

# area.zlength
execute unless data storage chunkbuster:pregen area.zlength run scoreboard players set $player.run.valid ckb.temp 0
execute unless data storage chunkbuster:pregen area.zlength run tellraw @s [{"text": "", "color": "red"}, {"text": "[Chunkbuster]", "color": "green"}, " ", "Missing an argument: ", {"text": "area.zlength", "color": "dark_red"}]

# Id valid, create a area.
execute if score $player.run.valid ckb.temp matches 1.. run function chunkbuster:util/create_cursor

# Otherwise, return some clickable text.
execute unless score $player.run.valid ckb.temp matches 1.. run function chunkbuster:player/suggest_arguments

# Clear arguments.
data modify storage chunkbuster:pregen area set value {}
