# A robot data structure with immutable properties
class Robot
  attr_reader :x, :y, :direction
  def initialize(x: nil, y: nil, direction: nil)
    @x, @y, @direction = x, y, direction
    self.freeze
  end
end


# A target data structure with immutable properties
class Target
  attr_reader :x, :y, :callback
  def initialize(x: nil, y: nil, callback: -> {})
    @x, @y, @callback = x, y, callback
    self.freeze
  end
end


# Underlying data structure
class World
  attr_reader :width, :height, :robot, :target
  DIRECTIONS = %i[north east south west]

  def initialize(width: 5, height: 5)
    @width = width
    @height = height
    @robot = Robot.new
    @target = Target.new
  end

  def place_robot(x:, y:, direction:)
    @robot = Robot.new x: x, y: y, direction: direction
    self
  end

  def place_target(x:, y:, when_reached: -> {})
    @target = Target.new x: x, y: y, callback: when_reached
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

    new_robot = Robot.new(x: x, y: y, direction: @robot.direction)
    if is_valid?(x: x, y: y)
      @robot = new_robot 
      @target.callback.call if is_target?(x: x, y: y)
    end

    self
  end

  def rotate_robot_left
    i = DIRECTIONS.find_index @robot.direction
    @robot = Robot.new(
      x: @robot.x,
      y: @robot.y,
      direction: DIRECTIONS[(i-1) % 4]
    )
  end

  def rotate_robot_right
    i = DIRECTIONS.find_index @robot.direction
    @robot = Robot.new(
      x: @robot.x,
      y: @robot.y,
      direction: DIRECTIONS[(i+1) % 4]
    )
  end

  def is_valid?(x:, y:)
    x&.between?(0, width - 1) && y&.between?(0, height - 1)
  end

  private

  def is_target?(x:, y:)
    @target.x == x && @target.y == y
  end
end

