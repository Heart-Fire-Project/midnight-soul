tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n » ","color": "light_purple","bold": true},{"translate":"ms.debug.panel","fallback": "高级设置面板","color": "light_purple"}]

tellraw @s [{"translate":"ms.debug.map","fallback": " 地图 »","color": "#BC78EC"}]
execute if score $map_select data matches 1 run tellraw @s [{"text":" [","color": "green"},{"translate":"ms.map.1","fallback": "聚光圣殿","color": "green","clickEvent": {"action": "run_command","value": "/function debug:settings/map_1"}},{"text":"]","color":"green"},{"text": " [","color": "gray"},{"translate":"ms.map.2","fallback": "镇灵塔楼","color": "gray","clickEvent": {"action": "run_command","value": "/function debug:settings/map_2"}},{"text": "]","color": "gray"},{"text":" [","color": "gray"},{"translate":"ms.map.3","fallback": "山间湖谷","color": "gray","clickEvent": {"action": "run_command","value": "/function debug:settings/map_3"}},{"text": "]","color":"gray"}]
execute if score $map_select data matches 2 run tellraw @s [{"text":" [","color": "gray"},{"translate":"ms.map.1","fallback": "聚光圣殿","color": "gray","clickEvent": {"action": "run_command","value": "/function debug:settings/map_1"}},{"text":"]","color":"gray"},{"text": " [","color": "green"},{"translate":"ms.map.2","fallback": "镇灵塔楼","color": "green","clickEvent": {"action": "run_command","value": "/function debug:settings/map_2"}},{"text": "]","color": "green"},{"text":" [","color": "gray"},{"translate":"ms.map.3","fallback": "山间湖谷","color": "gray","clickEvent": {"action": "run_command","value": "/function debug:settings/map_3"}},{"text": "]","color":"gray"}]
execute if score $map_select data matches 3 run tellraw @s [{"text":" [","color": "gray"},{"translate":"ms.map.1","fallback": "聚光圣殿","color": "gray","clickEvent": {"action": "run_command","value": "/function debug:settings/map_1"}},{"text":"]","color":"gray"},{"text": " [","color": "gray"},{"translate":"ms.map.2","fallback": "镇灵塔楼","color": "gray","clickEvent": {"action": "run_command","value": "/function debug:settings/map_2"}},{"text": "]","color": "gray"},{"text":" [","color": "green"},{"translate":"ms.map.3","fallback": "山间湖谷","color": "green","clickEvent": {"action": "run_command","value": "/function debug:settings/map_3"}},{"text": "]","color":"green"}]
tellraw @s [" ",{"translate":"ms.debug.map.tp","fallback": "[传送至当前地图]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:settings/map_tp"}}," ",{"translate":"ms.debug.lock","fallback": "[容器锁定]","color": "white","clickEvent": {"action": "run_command","value": "/give @s shulker_spawn_egg{EntityTag:{Tags:[summon_lock]}}"}}]

tellraw @s [{"translate":"ms.debug.mark","fallback": " 标记 »","color": "#BC78EC"}]
execute if score $show_mark data matches 0 run tellraw @s [" ",{"translate":"ms.debug.show_mark","fallback": "[展示所有标记]","color": "gray","clickEvent": {"action": "run_command","value": "/function debug:settings/show_mark"}}]
execute if score $show_mark data matches 1 run tellraw @s [" ",{"translate":"ms.debug.show_mark","fallback": "[展示所有标记]","color": "green","clickEvent": {"action": "run_command","value": "/function debug:settings/show_mark"}}]
tellraw @s [" ",{"translate":"ms.debug.mark_blue","fallback": "[标记碎片]","color": "blue","clickEvent": {"action": "run_command","value": "/give @s shulker_spawn_egg{EntityTag:{Tags:[summon_blue]}}"}}," ",{"translate":"ms.debug.mark_purple","fallback": "[标记传送]","color": "light_purple","clickEvent": {"action": "run_command","value": "/give @s shulker_spawn_egg{EntityTag:{Tags:[summon_purple]}}"}}," ",{"translate":"ms.debug.mark_gold","fallback": "[标记灵灯]","color": "gold","clickEvent": {"action": "run_command","value": "/give @s shulker_spawn_egg{EntityTag:{Tags:[summon_gold]}}"}}," ",{"translate":"ms.debug.mark_red","fallback": "[删除标记]","color": "red","clickEvent": {"action": "run_command","value": "/give @s shulker_spawn_egg{EntityTag:{Tags:[summon_red]}}"}}]

tellraw @s [{"translate":"ms.debug.speed","fallback": " 进程 »","color": "#BC78EC"}]
tellraw @s [" ",{"translate":"ms.debug.start","fallback": "[强制开始]","color": "aqua","clickEvent": {"action": "run_command","value": "/function debug:settings/start"}}," ",{"translate":"ms.debug.default","fallback": "[恢复默认]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:settings/speed_default"}}]
scoreboard players operation $cd_speed temp = $cd_speed data
scoreboard players operation $cd_speed temp /= $10 data
scoreboard players operation $cd_speed_f temp = $cd_speed temp
scoreboard players operation $cd_speed temp = $cd_speed data
scoreboard players operation $cd_speed temp %= $10 data
scoreboard players operation $cd_speed_b temp = $cd_speed temp
execute unless score $cd_speed data matches 7777777 run tellraw @s [" ",{"translate":"ms.debug.cd","fallback": "冷却速度"},"  ",{"text": " [-]  ","color": "red","clickEvent": {"action": "run_command","value": "/function debug:settings/cd_slow"}},{"score":{"objective":"temp","name":"$cd_speed_f"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"objective":"temp","name":"$cd_speed_b"},"color":"aqua"},{"text":"x","color":"blue"},{"text": "  [+] ","color": "green","clickEvent": {"action": "run_command","value": "/function debug:settings/cd_fast"}}]
execute if score $cd_speed data matches 7777777 run tellraw @s [" ",{"translate":"ms.debug.cd","fallback": "冷却速度"},"  ",{"text": " [-]  ","color": "red","clickEvent": {"action": "run_command","value": "/function debug:settings/cd_slow"}},{"text": "Inf","color": "aqua"},{"text":"x","color":"blue"},{"text": "  [+] ","color": "green","clickEvent": {"action": "run_command","value": "/function debug:settings/cd_fast"}}]
scoreboard players operation $cl_speed temp = $collect_speed data
scoreboard players operation $cl_speed temp /= $10 data
scoreboard players operation $cl_speed_f temp = $cl_speed temp
scoreboard players operation $cl_speed temp = $collect_speed data
scoreboard players operation $cl_speed temp %= $10 data
scoreboard players operation $cl_speed_b temp = $cl_speed temp
execute unless score $collect_speed data matches 7777777 run tellraw @s [" ",{"translate":"ms.debug.cl","fallback": "收集速度"},"  ",{"text": " [-]  ","color": "red","clickEvent": {"action": "run_command","value": "/function debug:settings/cl_slow"}},{"score":{"objective":"temp","name":"$cl_speed_f"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"objective":"temp","name":"$cl_speed_b"},"color":"aqua"},{"text":"x","color":"blue"},{"text": "  [+] ","color": "green","clickEvent": {"action": "run_command","value": "/function debug:settings/cl_fast"}}]
execute if score $collect_speed data matches 7777777 run tellraw @s [" ",{"translate":"ms.debug.cl","fallback": "收集速度"},"  ",{"text": " [-]  ","color": "red","clickEvent": {"action": "run_command","value": "/function debug:settings/cl_slow"}},{"text": "Inf","color": "aqua"},{"text":"x","color":"blue"},{"text": "  [+] ","color": "green","clickEvent": {"action": "run_command","value": "/function debug:settings/cl_fast"}}]

playsound block.stone_button.click_off player @s 0 1000000 0 1000000