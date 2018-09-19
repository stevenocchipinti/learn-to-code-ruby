################################################################################
#
#                                  Toy Robot
#                                  ---------
#
# Pre-requisite knowledge:
#
#   - Finite loops (times)
#   - Calling methods
#
# Exercises:
#
#   1. Call the methods required to move the robot to the target
#
#   2. Remove the arguments to the game.place_target method call to randomize
#   the target's position
#   HINT: You could use "brute force" here
#
#   3. Change the WIDTH to be 18 and the HEIGHT to be 9
#   HINT: You probably shuoldn't "brute force" anymore
#
################################################################################

require_relative './lib/toy_robot/lib/game'

WIDTH = 5
HEIGHT = 5

game = Game.new(WIDTH, HEIGHT)
game.place_robot(0, 0, "east")

# NOTE: When you reach exercise #2, comment the line below
game.place_target(4, 2)

# NOTE: When you reach exercise #2, uncomment the line below
# game.place_target


# You can use the following methods to move the robot around:
#   game.move_robot
#   game.rotate_robot_right
#   game.rotate_robot_left
