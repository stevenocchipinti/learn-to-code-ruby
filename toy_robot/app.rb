require 'ostruct'
require_relative './lib/world'
require_relative './lib/world_printer'


trap "SIGINT" do
  exit
end

world = World.new(width: 5, height: 5)
robot_controller = world.place_robot x: 0, y: 0, direction: :east
# world.place_target x: 3, y: 4
