execute if score @s glib.itemId matches 175 run summon item ~ ~ ~ {Item:{id:"minecraft:clay",Count:1b}}
execute if score @s glib.itemId matches 176 run summon item ~ ~ ~ {Item:{id:"minecraft:clay_ball",Count:1b}}
execute if score @s glib.itemId matches 177 run summon item ~ ~ ~ {Item:{id:"minecraft:clock",Count:1b}}
execute if score @s glib.itemId matches 178 run summon item ~ ~ ~ {Item:{id:"minecraft:coal",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id