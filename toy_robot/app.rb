require_relative './lib/game'

trap "SIGINT" do
  exit
end

game = Game.new(width: 5, height: 5)
robot_controller = game.place_robot(x: 0, y: 0, direction: :east)
game.place_target(x: 4, y: 4)

robot_controller.move
robot_controller.move
# robot_controller.left
# robot_controller.move
# robot_controller.move
