# 循环核心
execute unless score $talent_anime temp matches 1..70 run scoreboard players set $talent_anime temp 0
execute if score $talent_anime temp matches 0..70 run scoreboard players add $talent_anime temp 1
execute if score $talent_anime temp matches 71.. run scoreboard players reset $talent_anime temp
execute if score $talent_anime temp matches 1..70 run schedule function game:state/1/give_talent 1t replace

# 技能与天赋显示与随机
execute if score $talent_anime temp matches 1 as @a[team=!admin] run function game:state/1/skill/random
execute if score $talent_anime temp matches 20 run function game:state/1/skill/skill
execute if score $talent_anime temp matches 30 run function game:state/1/skill/skill_detail
execute if score $talent_anime temp matches 35 as @a[team=!admin] run function game:state/1/talent/random_1
execute if score $talent_anime temp matches 40 run function game:state/1/talent/talent
execute if score $talent_anime temp matches 50 run function game:state/1/talent/talent_detail
execute if score $talent_anime temp matches 55 as @a[team=!admin] run function game:state/1/talent/random_2
execute if score $talent_anime temp matches 60 run function game:state/1/talent/talent
execute if score $talent_anime temp matches 70 run function game:state/1/talent/talent_detail

# 音效
execute if score $talent_anime temp matches 20 run playsound block.dispenser.fail ambient @a[team=!admin] 0 1000000 0 1000000
execute if score $talent_anime temp matches 30 run playsound block.dispenser.fail ambient @a[team=!admin] 0 1000000 0 1000000
execute if score $talent_anime temp matches 40 run playsound block.dispenser.fail ambient @a[team=!admin] 0 1000000 0 1000000
execute if score $talent_anime temp matches 50 run playsound block.dispenser.fail ambient @a[team=!admin] 0 1000000 0 1000000
execute if score $talent_anime temp matches 60 run playsound block.dispenser.fail ambient @a[team=!admin] 0 1000000 0 1000000
execute if score $talent_anime temp matches 70 run playsound block.dispenser.fail ambient @a[team=!admin] 0 1000000 0 1000000