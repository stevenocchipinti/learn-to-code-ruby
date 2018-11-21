require_relative '../lib/toy_robot/lib/game'

WIDTH = 5
HEIGHT = 5

game = Game.new(WIDTH, HEIGHT)
game.place_robot(0, 0, "east")
game.place_target(4, 2)

# First cut

# game.move_robot
# game.move_robot
# game.move_robot
# game.move_robot
# game.rotate_robot_left
# game.move_robot
# game.move_robot


# Second cut

4.times { game.move_robot }
game.rotate_robot_left
2.times { game.move_robot }
