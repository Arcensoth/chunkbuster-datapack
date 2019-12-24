#> chunkbuster:player/suggest_arguments
#
# @context player

tellraw @s [{"text": "", "color": "gray"}, {"text": "[Chunkbuster]", "color": "green"}, " ", {"text": "Click me to provide arguments!", "color": "light_purple", "clickEvent": {"action": "suggest_command", "value": "/data modify storage chunkbuster:pregen area set value {name: 'My Area Name', xstart: 0, zstart: 0, xlength: 1, zlength: 1}"}, "hoverEvent": {"action": "show_text", "value": [{"text": "Click me to provide arguments!", "color": "light_purple"}]}}]
