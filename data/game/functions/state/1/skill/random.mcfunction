# 随机技能
scoreboard players set $random_min data 1
scoreboard players set $random_max data 4
function base:random
execute store result score @s skill run scoreboard players get $random data