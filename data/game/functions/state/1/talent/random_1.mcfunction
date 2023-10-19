# 随机第一个天赋
scoreboard players set $random_min data 1
scoreboard players set $random_max data 5
function base:random
execute store result score @s talent_1 run scoreboard players get $random data
execute store result score @s talent_temp run scoreboard players get $random data