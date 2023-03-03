# This function was automatically generated.

execute as @a[tag=bs.menu.debug.bs.mapedit,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.mapedit] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.bs.mapedit] bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.mapedit,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.mapedit,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.mapedit,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.mapedit,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.mapedit] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.mapedit] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.bs.mapedit] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.bs.mapedit] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.bs.mapedit,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.mapedit] remove bs.menu.debug
tag @a[tag=bs.menu.debug.bs.mapedit.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.bs.mapedit.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.mapedit.close] remove bs.menu.debug.bs.mapedit
tag @a[tag=bs.menu.debug.bs.mapedit.close] remove bs.menu.debug.bs.mapedit.close

tellraw @a[tag=bs.menu.debug.bs.mapedit] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0}] {"text": "   + brush", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.mapedit.brush"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.bs.mapedit.centre] ["", {"text": "   centre: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.centre"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.centre"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=bs.debug.bs.mapedit.centre] ["", {"text": "   centre: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.centre"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.centre"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.bs.mapedit.esphere] ["", {"text": "   esphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=bs.debug.bs.mapedit.esphere] ["", {"text": "   esphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.bs.mapedit.pos1] ["", {"text": "   pos1: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.pos1"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.pos1"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=bs.debug.bs.mapedit.pos1] ["", {"text": "   pos1: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.pos1"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.pos1"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.bs.mapedit.pos2] ["", {"text": "   pos2: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.pos2"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.pos2"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=bs.debug.bs.mapedit.pos2] ["", {"text": "   pos2: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.pos2"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.pos2"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.bs.mapedit.replace] ["", {"text": "   replace: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=bs.debug.bs.mapedit.replace] ["", {"text": "   replace: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.bs.mapedit.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=bs.debug.bs.mapedit.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.bs.mapedit.sphere] ["", {"text": "   sphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.mapedit.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.mapedit,scores={bs.menu.page = 0},tag=bs.debug.bs.mapedit.sphere] ["", {"text": "   sphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.mapedit.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=bs.menu.debug.bs.mapedit] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.mapedit.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Bookshelf Menu / Debug / bs.mapedit", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.mapedit.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]