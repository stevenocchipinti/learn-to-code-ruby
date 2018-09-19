require_relative '../lib/toy_robot/lib/game'

WIDTH = 18
HEIGHT = 9

game = Game.new(WIDTH, HEIGHT, 0.1)
game.place_robot(0, 0, "east")

game.place_target

rows = game.target.y - game.robot.y
cols = game.target.x - game.robot.x

game.rotate_robot_left
rows.times { game.move_robot }
game.rotate_robot_right
cols.times { game.move_robot }
