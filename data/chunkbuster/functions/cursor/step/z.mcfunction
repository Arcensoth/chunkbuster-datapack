#> chunkbuster:cursor/step/z
#
# @context cursor

# Check if we're finished.
execute unless score @s ckb.zleftchk matches 1.. run function chunkbuster:cursor/finish

# Reset x.
scoreboard players operation @s ckb.xleftchk = @s ckb.xlengthchk
scoreboard players operation @s ckb.xnextblk = @s ckb.xstartblk

# Advance in the z direction.
scoreboard players remove @s ckb.zleftchk 1
scoreboard players add @s ckb.znextblk 16
