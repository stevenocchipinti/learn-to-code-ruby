# A target data structure with immutable properties
class Target
  attr_reader :x, :y, :callback

  def initialize(x: nil, y: nil, callback: -> {})
    @x, @y, @callback = x, y, callback
    raise_validation_error unless is_valid?
    self.freeze
  end

  private

  def is_valid?
    (callback.is_a?(Proc) || callback.nil?) &&
      (x.is_a?(Integer) || x.nil?) &&
      (y.is_a?(Integer) || y.nil?)
  end

  def raise_validation_error
    raise ArgumentError.new(
      "Invalid arguments:\n"\
      "x = #{x}, y = #{y}, callback = #{callback}\n"\
      "<x> and <y> should be valid integers and <callback> should be a lambda"
    )
  end
end
