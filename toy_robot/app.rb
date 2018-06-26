require_relative './lib/game'

WIDTH = 5
HEIGHT = 5

game = Game.new(width: WIDTH, height: HEIGHT, delay: 0.1)

game.place_robot(x: 0, y: 0, direction: :east)
game.place_target

(HEIGHT).times do |row|
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
