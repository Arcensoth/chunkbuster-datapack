#> chunkbuster:tick/progress/update
#
# @context root

# reset update counter
scoreboard players set $progress.update ckb.temp 10

# reset totals
scoreboard players set $progress.value.total ckb.temp 0
scoreboard players set $progress.max.total ckb.temp 0

# calculate values from all cursors combined
execute as @e[type=minecraft:snowball, tag=chunkbuster.cursor] at @s run function chunkbuster:tick/progress/update/cursor

# and adjust the bossbar
execute store result bossbar chunkbuster:progress value run scoreboard players get $progress.value.total ckb.temp
execute store result bossbar chunkbuster:progress max run scoreboard players get $progress.max.total ckb.temp
bossbar set chunkbuster:progress name ["[Chunkbuster] Chunks generated: ", {"score": {"name": "$progress.value.total", "objective": "ckb.temp"}}, " / ", {"score": {"name": "$progress.max.total", "objective": "ckb.temp"}}]

# set visibility
bossbar set chunkbuster:progress players @a[tag=chunkbuster.admin]
bossbar set chunkbuster:progress visible true
