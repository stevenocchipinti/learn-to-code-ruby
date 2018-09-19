require_relative './lib/toy_robot/lib/game'

WIDTH = 5
HEIGHT = 5

game = Game.new(width: WIDTH, height: HEIGHT)
game.place_robot(x: 0, y: 0, direction: :east)
game.place_target(x: 4, y: 2)

# Use the following methods on the game object to move the robot to the target:
#   game.move_robot
#   game.rotate_robot_right
#   game.rotate_robot_left
