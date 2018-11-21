require_relative './robot'
require_relative './target'

# Underlying data structure
class World
  attr_reader :width, :height, :robot, :target
  DIRECTIONS = %w[north east south west]

  def initialize(width: 5, height: 5)
    @width = width
    @height = height
    @robot = Robot.new
    @target = Target.new
  end

  def place_robot(x:, y:, direction:)
    return self unless is_valid_position? x: x, y: y
    @robot = Robot.new x: x, y: y, direction: direction
    self
  end

  def place_target(x: nil, y: nil, when_reached: -> {})
    random_position = random_available_position
    target = Target.new(
      x: x || random_position.fetch(:x),
      y: y || random_position.fetch(:y),
      callback: when_reached
    )
    @target = target if is_valid_position? x: target.x, y: target.y
    self
  end

  def move_robot
    case @robot.direction
    when "north"
      x, y = @robot.x, @robot.y + 1
    when "east"
      x, y = @robot.x + 1, @robot.y
    when "south"
      x, y = @robot.x, @robot.y - 1
    when "west"
      x, y = @robot.x - 1, @robot.y
    end

    new_robot = Robot.new(x: x, y: y, direction: @robot.direction)
    if is_valid_position?(x: x, y: y)
      @robot = new_robot
      @target.callback.call if is_target?(x: x, y: y)
    end

    self
  end

  def rotate_robot_left
    rotate_robot(-1) if @robot.direction
    self
  end

  def rotate_robot_right
    rotate_robot(1) if @robot.direction
    self
  end

  def is_valid_position?(x:, y:)
    x&.between?(0, width - 1) && y&.between?(0, height - 1)
  end

  def is_available?(x:, y:)
    is_valid_position?(x: x, y: y) &&
      !is_robot?(x: x, y: y) &&
      !is_target?(x: x, y: y)
  end

  private

  def is_target?(x:, y:)
    @target.x == x && @target.y == y
  end

  def is_robot?(x:, y:)
    @robot.x == x && @robot.y == y
  end

  def rotate_robot(n)
    i = DIRECTIONS.find_index @robot.direction
    @robot = Robot.new(
      x: @robot.x,
      y: @robot.y,
      direction: DIRECTIONS[(i+n) % 4]
    )
  end

  def random_available_position
    (0...@width).to_a
      .product((0...@height).to_a)
      .map { |pair| {x: pair.first, y: pair.last} }
      .select { |position| is_available?(position) }
      .sample
  end
end

