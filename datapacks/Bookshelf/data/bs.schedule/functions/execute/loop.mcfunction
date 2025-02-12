execute if data storage bs:data schedule.commands[-1].selector run function bs.schedule:execute/run_as with storage bs:data schedule.commands[-1]
execute unless data storage bs:data schedule.commands[-1].selector run function bs.schedule:execute/run with storage bs:data schedule.commands[-1]

# Recursively execute all commands until the execution time is greater than the game time.
data remove storage bs:data schedule.commands[-1]
execute store result score #schedule.next_time bs.data run data get storage bs:data schedule.commands[-1].time
execute unless score #schedule.next_time bs.data matches 0 \
  if score #schedule.game_time bs.data >= #schedule.next_time bs.data \
  run function bs.schedule:execute/loop
