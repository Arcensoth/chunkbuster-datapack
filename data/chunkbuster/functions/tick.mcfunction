#> chunkbuster:tick
#
# @context root

# Sync players.
execute as @a at @s run function chunkbuster:player/sync

# Make sure there's always a marker at world spawn.
summon minecraft:area_effect_cloud ~ 0 ~ {Duration: 2, CustomName: '[{"text": "chunkbuster.worldspawn", "color": "green"}]', Tags: ["chunkbuster.worldspawn"]}
