#> chunkbuster:.module/teardown

scoreboard objectives remove ckb.temp
scoreboard objectives remove ckb.const

# player stuff
scoreboard objectives remove ckb.run

# cursor stuff
scoreboard objectives remove ckb.xstartblk
scoreboard objectives remove ckb.zstartblk
scoreboard objectives remove ckb.xnextblk
scoreboard objectives remove ckb.znextblk
scoreboard objectives remove ckb.xlengthchk
scoreboard objectives remove ckb.zlengthchk
scoreboard objectives remove ckb.xleftchk
scoreboard objectives remove ckb.zleftchk

# progress bar
bossbar remove chunkbuster:progress
