#> chunkbuster:.module/setup

scoreboard objectives add ckb.temp dummy
scoreboard objectives add ckb.const dummy

# player stuff
scoreboard objectives add ckb.run trigger

# cursor stuff
scoreboard objectives add ckb.xstartblk dummy
scoreboard objectives add ckb.zstartblk dummy
scoreboard objectives add ckb.xnextblk dummy
scoreboard objectives add ckb.znextblk dummy
scoreboard objectives add ckb.xlengthchk dummy
scoreboard objectives add ckb.zlengthchk dummy
scoreboard objectives add ckb.xleftchk dummy
scoreboard objectives add ckb.zleftchk dummy

# progress bar
bossbar add chunkbuster:progress "Chunkbuster"
bossbar set chunkbuster:progress style notched_10
bossbar set chunkbuster:progress color green
