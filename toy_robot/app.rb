require_relative './lib/game'

WIDTH = 15
HEIGHT = 10

game = Game.new(width: WIDTH, height: HEIGHT, delay: 0.1)

game.place_robot(x: 0, y: 0, direction: :east)
game.place_target

rows = game.target.y - game.robot.y
cols = game.target.x - game.robot.x

game.rotate_robot_left
rows.times { game.move_robot }
game.rotate_robot_right
cols.times { game.move_robot }
