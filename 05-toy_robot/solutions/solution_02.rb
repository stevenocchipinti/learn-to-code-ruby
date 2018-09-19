require_relative '../lib/toy_robot/lib/game'

WIDTH = 5
HEIGHT = 5

game = Game.new(WIDTH, HEIGHT, 0.1)
game.place_robot(0, 0, "east")

game.place_target

# First cut

# game.move_robot
# game.move_robot
# game.move_robot
# game.move_robot

# game.rotate_robot_left
# game.move_robot
# game.rotate_robot_left

# game.move_robot
# game.move_robot
# game.move_robot
# game.move_robot

# game.rotate_robot_right
# game.move_robot
# game.rotate_robot_right

# game.move_robot
# game.move_robot
# game.move_robot
# game.move_robot

# game.rotate_robot_left
# game.move_robot
# game.rotate_robot_left

# game.move_robot
# game.move_robot
# game.move_robot
# game.move_robot

# game.rotate_robot_right
# game.move_robot
# game.rotate_robot_right

# game.move_robot
# game.move_robot
# game.move_robot
# game.move_robot


# Second cut

HEIGHT.times do |row|
  # Move along the row
  (WIDTH - 1).times { game.move_robot }

  # Move up to the next row
  if row.even?
    game.rotate_robot_left
    game.move_robot
    game.rotate_robot_left
  else
    game.rotate_robot_right
    game.move_robot
    game.rotate_robot_right
  end
end
