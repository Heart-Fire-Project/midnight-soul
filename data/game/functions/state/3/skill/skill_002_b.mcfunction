execute if entity @a[tag=skill_002_active] unless entity @a[team=alive,scores={state=1}] run function game:state/3/skill/skill_002_c
execute if entity @a[tag=skill_002_active] if entity @a[team=alive,scores={state=1}] run kill @e[tag=gold,limit=1,sort=random]
execute if entity @a[tag=skill_002_active] if entity @a[team=alive,scores={state=1}] run scoreboard players add @s stat_temp_heal 1
execute if entity @a[tag=skill_002_active] if entity @a[team=alive,scores={state=1}] as @r[team=alive,scores={state=1}] at @s run function game:state/3/soul_heal