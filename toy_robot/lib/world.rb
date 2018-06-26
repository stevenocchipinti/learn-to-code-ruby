class RobotController
  def initialize(robot:, world:)
    @robot = robot
    @world = world
  end
end

class World
  attr_reader :width, :height, :robot, :target

  def initialize(width: 5, height: 5)
    @width = width
    @height = height
    @robot = OpenStruct.new
    @target = OpenStruct.new
    @turns = 0
    print
  end

  def take_turn
    @turns += 1
  end

  def print(delay: 1)
    WorldPrinter.print_frame(world: self, number_of_moves: @turns)
    sleep delay
  end

  def place_robot(x:, y:, direction:)
    @robot = OpenStruct.new x: x, y: y, direction: direction
    RobotController.new robot: @robot, world: self
    take_turn and print
  end
end
