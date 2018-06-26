require 'ostruct'

# Underlying data structure
class World
  attr_reader :width, :height, :robot, :target

  def initialize(width: 5, height: 5)
    @width = width
    @height = height
    @robot = OpenStruct.new
    @target = OpenStruct.new
  end

  def place_robot(x:, y:, direction:)
    @robot = OpenStruct.new x: x, y: y, direction: direction
    self
  end

  def place_target(x:, y:, when_reached: -> {})
    @target = OpenStruct.new x: x, y: y, callback: when_reached
    self
  end

  def move_robot
    case @robot.direction
    when :north
      x, y = @robot.x, @robot.y + 1
    when :east
      x, y = @robot.x + 1, @robot.y
    when :south
      x, y = @robot.x, @robot.y - 1
    when :west
      x, y = @robot.x - 1, @robot.y
    end

    new_robot = OpenStruct.new(x: x, y: y, direction: @robot.direction)
    if is_valid?(x: x, y: y)
      @robot = new_robot 
      @target.callback.call if is_target?(x: x, y: y)
    end

    self
  end

  def is_valid?(x:, y:)
    x&.between?(0, width - 1) && y&.between?(0, height - 1)
  end

  private

  def is_target?(x:, y:)
    @target.x == x && @target.y == y
  end
end

