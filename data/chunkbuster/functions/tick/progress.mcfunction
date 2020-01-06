#> chunkbuster:tick/progress
#
# @context root

# only update twice per second
scoreboard players remove $progress.update ckb.temp 1
execute if score $progress.update ckb.temp matches ..0 run function chunkbuster:tick/progress/update
