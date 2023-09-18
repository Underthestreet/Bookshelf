# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.link.rx dummy [{"text":"BS ","color":"dark_gray"},{"text":"Relative position X","color":"aqua"}]
scoreboard objectives add bs.link.ry dummy [{"text":"BS ","color":"dark_gray"},{"text":"Relative position Y","color":"aqua"}]
scoreboard objectives add bs.link.rz dummy [{"text":"BS ","color":"dark_gray"},{"text":"Relative position Z","color":"aqua"}]

scoreboard objectives add bs.link.lx dummy [{"text":"BS ","color":"dark_gray"},{"text":"Local position X","color":"aqua"}]
scoreboard objectives add bs.link.ly dummy [{"text":"BS ","color":"dark_gray"},{"text":"Local position Y","color":"aqua"}]
scoreboard objectives add bs.link.lz dummy [{"text":"BS ","color":"dark_gray"},{"text":"Local position Z","color":"aqua"}]

scoreboard objectives add bs.link.lv dummy [{"text":"BS ","color":"dark_gray"},{"text":"Local rotation V","color":"aqua"}]
scoreboard objectives add bs.link.lh dummy [{"text":"BS ","color":"dark_gray"},{"text":"Local rotation H","color":"aqua"}]

scoreboard objectives add bs.link.to dummy [{"text":"BS ","color":"dark_gray"},{"text":"Linked to","color":"aqua"}]

scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set 10 bs.const 10