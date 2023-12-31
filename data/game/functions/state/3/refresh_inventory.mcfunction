# 清空背包
item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

# 清空物品栏格子
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air

# 武器处理
item replace entity @s[team=protect,scores={state=1}] hotbar.1 with air
item replace entity @s[team=protect,scores={state=0}] hotbar.1 with golden_sword{display:{Name:'[{"translate":"ms.weapon","fallback": "祛灵刃","italic": false}]',Lore:['{"translate":"ms.weapon.desc","fallback": "斩断一切不净之物","italic": false,"color": "gray"}']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:0.1,Name:"attack",Slot:"mainhand",Operation:0,UUID:[I;7,4,1,9]},{AttributeName:"generic.attack_speed",Amount:4,Name:"attack",Slot:"mainhand",Operation:0,UUID:[I;2,0,2,3]}],HideFlags:63}

# 技能处理
item replace entity @s[scores={state=1}] hotbar.4 with firework_star
item replace entity @s[scores={state=0,skill_cd=1..}] hotbar.4 with firework_star
item replace entity @s[scores={state=0,skill_cd=..0,skill=1},team=alive] hotbar.4 with phantom_membrane
item replace entity @s[scores={state=0,skill_cd=..0,skill=2},team=alive] hotbar.4 with soul_lantern
item replace entity @s[scores={state=0,skill_cd=..0,skill=3},team=alive] hotbar.4 with recovery_compass
item replace entity @s[scores={state=0,skill_cd=..0,skill=4},team=alive] hotbar.4 with chest
item replace entity @s[scores={state=0,skill_cd=..0,skill=1},team=protect] hotbar.4 with spectral_arrow
item replace entity @s[scores={state=0,skill_cd=..0,skill=2},team=protect] hotbar.4 with echo_shard
item replace entity @s[scores={state=0,skill_cd=..0,skill=3},team=protect] hotbar.4 with compass
item replace entity @s[scores={state=0,skill_cd=..0,skill=4},team=protect] hotbar.4 with ender_chest

# 天赋处理
item replace entity @s[scores={talent_1=1},team=alive] hotbar.7 with glow_ink_sac
item replace entity @s[scores={talent_1=2},team=alive] hotbar.7 with blaze_powder
item replace entity @s[scores={talent_1=3},team=alive] hotbar.7 with magma_cream
item replace entity @s[scores={talent_1=4},team=alive] hotbar.7 with soul_torch
item replace entity @s[scores={talent_1=5},team=alive] hotbar.7 with feather
item replace entity @s[scores={talent_1=1},team=protect] hotbar.7 with crimson_fungus
item replace entity @s[scores={talent_1=2},team=protect] hotbar.7 with red_dye
item replace entity @s[scores={talent_1=3},team=protect] hotbar.7 with redstone
item replace entity @s[scores={talent_1=4},team=protect] hotbar.7 with black_candle
item replace entity @s[scores={talent_1=5},team=protect] hotbar.7 with compass
execute if score @s talent_1_cd matches 1.. unless entity @s[tag=talent_104_active] run item replace entity @s hotbar.7 with firework_star
item replace entity @s[scores={talent_2=1},team=alive] hotbar.8 with glow_ink_sac
item replace entity @s[scores={talent_2=2},team=alive] hotbar.8 with blaze_powder
item replace entity @s[scores={talent_2=3},team=alive] hotbar.8 with magma_cream
item replace entity @s[scores={talent_2=4},team=alive] hotbar.8 with soul_torch
item replace entity @s[scores={talent_2=5},team=alive] hotbar.8 with feather
item replace entity @s[scores={talent_2=1},team=protect] hotbar.8 with crimson_fungus
item replace entity @s[scores={talent_2=2},team=protect] hotbar.8 with red_dye
item replace entity @s[scores={talent_2=3},team=protect] hotbar.8 with redstone
item replace entity @s[scores={talent_2=4},team=protect] hotbar.8 with black_candle
item replace entity @s[scores={talent_2=5},team=protect] hotbar.8 with compass
execute if score @s talent_2_cd matches 1.. unless entity @s[tag=talent_104_active] run item replace entity @s hotbar.8 with firework_star

# 道具处理
item replace entity @s[scores={item=-1},team=alive] hotbar.1 with structure_void
item replace entity @s[scores={item=1},team=alive] hotbar.1 with iron_chestplate
item replace entity @s[scores={state=1},team=alive] hotbar.1 with barrier

# 处理数据
item modify entity @s[team=alive,scores={item=-1}] hotbar.1 base:item/empty
$item modify entity @s[team=alive,scores={item=1}] hotbar.1 base:item/00$(item)
item modify entity @s[team=alive,scores={state=1}] hotbar.1 base:item/000
$item modify entity @s[team=alive,scores={skill=$(skill)}] hotbar.4 base:skill/00$(skill)
$item modify entity @s[team=protect,scores={skill=$(skill)}] hotbar.4 base:skill/10$(skill)
$item modify entity @s[team=alive,scores={talent_1=$(talent_1)}] hotbar.7 base:talent/00$(talent_1)
$item modify entity @s[team=protect,scores={talent_1=$(talent_1)}] hotbar.7 base:talent/10$(talent_1)
$item modify entity @s[team=alive,scores={talent_2=$(talent_2)}] hotbar.8 base:talent/00$(talent_2)
$item modify entity @s[team=protect,scores={talent_2=$(talent_2)}] hotbar.8 base:talent/10$(talent_2)

item replace entity @s weapon.offhand with air