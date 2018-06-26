# Underlying data structure
class World
  attr_reader :width, :height, :robot, :target

  def initialize(width: 5, height: 5, robot:, target:)
    @width = width
    @height = height
    @robot = robot
    @target = target
  end

  def place_robot(x:, y:, direction:)
    @robot = OpenStruct.new x: x, y: y, direction: direction
  end
end

