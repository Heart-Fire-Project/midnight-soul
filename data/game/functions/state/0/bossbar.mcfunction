# 人数不足
execute if score $prepare data matches ..4 run bossbar set midsoul:info color red
execute if score $prepare data matches ..4 run bossbar set midsoul:info name [{"translate":"ms.bossbar.0.wait","fallback":"等待玩家中 | 需要 5 人以开始","color":"red"}]
execute if score $prepare data matches ..4 store result bossbar midsoul:info value run scoreboard players get $prepare data
execute if score $prepare data matches ..4 run bossbar set midsoul:info max 5

# 人数足够
execute if score $prepare data matches 5.. run bossbar set midsoul:info color blue
execute if score $prepare data matches 5.. run bossbar set midsoul:info name [{"translate":"ms.bossbar.0.start","fallback":"人数已达标 | 游戏将在 %s 秒后开始","color":"aqua","with":[{"score":{"objective":"countdown","name":"$start"},"color":"blue"}]}]
execute if score $prepare data matches 5.. store result bossbar midsoul:info value run scoreboard players get $start countdown
execute if score $prepare data matches 5.. run bossbar set midsoul:info max 10

# 锁定游戏
execute if score $gamelock data matches 1 run bossbar set midsoul:info color white
execute if score $gamelock data matches 1 run bossbar set midsoul:info name [{"translate":"ms.bossbar.0.lock","fallback":"游戏已锁定 | 请等待管理员解锁","color":"white"}]
execute if score $gamelock data matches 1 run bossbar set midsoul:info value 1000