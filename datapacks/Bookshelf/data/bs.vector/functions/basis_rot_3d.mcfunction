# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 1.0
# Created: 20/10/2023 (1.20.2)
# Last modification: 20/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#basis-rotation-3d
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players set #vector.basis_rot_3d.scaling bs.data $(scaling)
scoreboard players operation #vector.basis_rot_3d.rot.0 bs.data = $vector.basis_rot_3d.rot.0 bs.in
scoreboard players operation #vector.basis_rot_3d.rot.1 bs.data = $vector.basis_rot_3d.rot.1 bs.in
scoreboard players operation #vector.basis_rot_3d.rot.0 bs.data *= 100 bs.const
scoreboard players operation #vector.basis_rot_3d.rot.1 bs.data *= 100 bs.const

# sincos(h: Phi) & sincos(v: Theta)
execute store result entity B5-0-0-0-1 Rotation[0] float 0.01 run scoreboard players operation #vector.basis_rot_3d.rot.0 bs.data /= #vector.basis_rot_3d.scaling bs.data
execute as B5-0-0-0-1 at @s positioned 0.0 0.0 0.0 rotated ~180 0.0 run tp @s ^ ^ ^10.0
execute store result score #vector.basis_rot_3d.cos.h bs.data run data get entity B5-0-0-0-1 Pos[2] 100
execute store result score #vector.basis_rot_3d.sin.h bs.data run data get entity B5-0-0-0-1 Pos[0] 100

execute store result entity B5-0-0-0-1 Rotation[0] float 0.01 run scoreboard players operation #vector.basis_rot_3d.rot.1 bs.data /= #vector.basis_rot_3d.scaling bs.data
execute as B5-0-0-0-1 at @s positioned 0.0 0.0 0.0 rotated ~180 0.0 run tp @s ^ ^ ^10.0
execute store result score #vector.basis_rot_3d.cos.v bs.data run data get entity B5-0-0-0-1 Pos[2] 100
execute store result score #vector.basis_rot_3d.sin.v bs.data run data get entity B5-0-0-0-1 Pos[0] 100

# X' = Z * sin(h) + X * cos(h)
scoreboard players operation $vector.basis_rot_3d.pos.0 bs.out = $vector.basis_rot_3d.pos.2 bs.in
scoreboard players operation $vector.basis_rot_3d.pos.0 bs.out *= #vector.basis_rot_3d.sin.h bs.data
scoreboard players operation #vector.basis_rot_3d bs.data = $vector.basis_rot_3d.pos.0 bs.in
scoreboard players operation #vector.basis_rot_3d bs.data *= #vector.basis_rot_3d.cos.h bs.data
scoreboard players operation $vector.basis_rot_3d.pos.0 bs.out += #vector.basis_rot_3d bs.data
scoreboard players operation $vector.basis_rot_3d.pos.0 bs.out /= 1000 bs.const

# Y' = (z * cos(h) - x * sin(h)) * sin(v) + y * cos(v)
scoreboard players operation $vector.basis_rot_3d.pos.1 bs.out = $vector.basis_rot_3d.pos.2 bs.in
scoreboard players operation $vector.basis_rot_3d.pos.1 bs.out *= #vector.basis_rot_3d.cos.h bs.data
scoreboard players operation #vector.basis_rot_3d bs.data = $vector.basis_rot_3d.pos.0 bs.in
scoreboard players operation #vector.basis_rot_3d bs.data *= #vector.basis_rot_3d.sin.h bs.data
scoreboard players operation $vector.basis_rot_3d.pos.1 bs.out -= #vector.basis_rot_3d bs.data
execute store result score $vector.basis_rot_3d.pos.2 bs.out run scoreboard players operation $vector.basis_rot_3d.pos.1 bs.out /= 1000 bs.const
scoreboard players operation $vector.basis_rot_3d.pos.1 bs.out *= #vector.basis_rot_3d.sin.v bs.data
scoreboard players operation #vector.basis_rot_3d bs.data = $vector.basis_rot_3d.pos.1 bs.in
scoreboard players operation #vector.basis_rot_3d bs.data *= #vector.basis_rot_3d.cos.v bs.data
scoreboard players operation $vector.basis_rot_3d.pos.1 bs.out += #vector.basis_rot_3d bs.data
scoreboard players operation $vector.basis_rot_3d.pos.1 bs.out /= 1000 bs.const

# Z' = (z * cos(h) - x * sin(h)) * cos(v) - y * sin(v)
scoreboard players operation $vector.basis_rot_3d.pos.2 bs.out *= #vector.basis_rot_3d.cos.v bs.data
scoreboard players operation #vector.basis_rot_3d bs.data = $vector.basis_rot_3d.pos.1 bs.in
scoreboard players operation #vector.basis_rot_3d bs.data *= #vector.basis_rot_3d.sin.v bs.data
scoreboard players operation $vector.basis_rot_3d.pos.2 bs.out -= #vector.basis_rot_3d bs.data
scoreboard players operation $vector.basis_rot_3d.pos.2 bs.out /= 1000 bs.const
