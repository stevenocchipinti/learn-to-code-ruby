require_relative './world'
require_relative './world_printer'
require_relative './robot_controller'

# User facing global operations
class Game
  def initialize(width: 5, height: 5)
    @world = World.new(width: width, height: height)
    @controller = nil
    print
  end

  def print
    WorldPrinter.print_frame(
      world: @world,
      number_of_moves: @controller&.turns || 0
    )
  end

  def place_robot(x:, y:, direction:)
    robot = @world.place_robot(x: x, y: y, direction: direction)
    print
    @controller = RobotController.new(robot: robot, world: @world, game: self)
  end

  def place_target(x:, y:)
    @world.place_target(x: x, y: y)
    print
    true
  end
end
