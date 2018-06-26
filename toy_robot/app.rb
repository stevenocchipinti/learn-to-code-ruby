require_relative './lib/game'

game = Game.new(width: 5, height: 5)
game.place_robot(x: 0, y: 0, direction: :east)
game.place_target(x: 4, y: 4)

game.move_robot
game.move_robot
# robot_controller.left
# robot_controller.move
# robot_controller.move
