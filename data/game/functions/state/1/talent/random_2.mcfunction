# 随机第二个天赋
scoreboard players set $random_min data 1
scoreboard players set $random_max data 5
function base:random
execute store result score @s talent_2 run scoreboard players get $random data
execute store result score @s talent_temp run scoreboard players get $random data

# 如果天赋相同
execute if score @s talent_1 = @s talent_2 run function game:state/1/talent/random_2