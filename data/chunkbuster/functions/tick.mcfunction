#> chunkbuster:tick
#
# @context root

# Make sure there's always a marker at world spawn.
summon minecraft:area_effect_cloud ~ 0 ~ {Duration: 2, CustomName: '[{"text": "chunkbuster.worldspawn", "color": "green"}]', Tags: ["chunkbuster.worldspawn"]}

# Sync players.
execute as @a at @s run function chunkbuster:player/sync

# Sync the progress bar, if pre-gen is active.
execute if score $active ckb.temp matches 1.. run function chunkbuster:tick/progress
execute unless score $active ckb.temp matches 1.. run bossbar set chunkbuster:progress visible false
