require_relative './lib/game'

game = Game.new(width: 5, height: 5)
game.place_robot(x: 0, y: 0, direction: :east)
game.place_target(x: 4, y: 2)

game.move_robot
game.move_robot
game.rotate_robot_left
game.move_robot
game.move_robot
game.rotate_robot_right
game.move_robot
game.move_robot
