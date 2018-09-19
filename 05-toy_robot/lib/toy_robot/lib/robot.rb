require_relative './world'

# A robot data structure with immutable properties
class Robot
  attr_reader :x, :y, :direction

  def initialize(x: nil, y: nil, direction: nil)
    @x, @y, @direction = x, y, direction
    raise_validation_error unless is_valid? || is_empty?
    self.freeze
  end

  private

  def is_empty?
    [x, y, direction].none?
  end

  def is_valid?
    World::DIRECTIONS.include?(direction) &&
      x.is_a?(Integer) &&
      y.is_a?(Integer)
  end

  def raise_validation_error
    raise ArgumentError.new(
      "Invalid arguments:\n"\
      "x = #{x}, y = #{y}, direction = #{direction}\n"\
      "<x> and <y> should be valid integers and "\
      "<direction> should be one of these strings:\n#{World::DIRECTIONS.to_s}"
    )
  end
end
