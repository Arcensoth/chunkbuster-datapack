#> chunkbuster:tick/progress/update/cursor
#
# @context cursor

# value
# (ckb.zlengthchk - ckb.zleftchk) * ckb.xlengthchk + (ckb.xlengthchk - ckb.xleftchk)
scoreboard players operation $progress.value.cursor ckb.temp = @s ckb.zlengthchk
scoreboard players operation $progress.value.cursor ckb.temp -= @s ckb.zleftchk
scoreboard players operation $progress.value.cursor ckb.temp *= @s ckb.xlengthchk
scoreboard players operation $progress.value.cursor ckb.temp += @s ckb.xlengthchk
scoreboard players operation $progress.value.cursor ckb.temp -= @s ckb.xleftchk
scoreboard players operation $progress.value.total ckb.temp += $progress.value.cursor ckb.temp

# max
# ckb.xlengthchk * ckb.zlengthchk
scoreboard players operation $progress.max.cursor ckb.temp = @s ckb.xlengthchk
scoreboard players operation $progress.max.cursor ckb.temp *= @s ckb.zlengthchk
scoreboard players operation $progress.max.total ckb.temp += $progress.max.cursor ckb.temp
