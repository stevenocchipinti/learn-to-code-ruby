# Prints an ASCII version of the world
class WorldPrinter
  CSI = "\e[".freeze
  CLEAR = "#{CSI}H#{CSI}J".freeze
  ARROWS = {west: '←', north: '↑', east: '→', south: '↓'}.freeze

  def initialize(world:, number_of_moves:)
    @world = world
    @robot = world.robot
    @target = world.target
    @number_of_moves = number_of_moves
  end

  def self.print_frame(world:, number_of_moves:)
    self.new(world: world, number_of_moves: number_of_moves).print_frame
  end

  def print_frame
    print CLEAR
    puts "World Map:"
    puts
    puts ascii_world world: @world, robot: @robot, target: @target
    puts
    puts "Moves: #{@number_of_moves}"
  end

  private

  def ascii_world(world:, robot:, target:)
    width = world.width
    height = world.height

    top_border    = "    ┌#{ "───┬" * (width - 1) }───┐\n"
    middle_border = "    ├#{ "───┼" * (width - 1) }───┤\n"
    bottom_border = "    └#{ "───┴" * (width - 1) }───┘\n"
    x_axis        = "     #{width.times.map{ |n| n.to_s.center(4) }.join}\n"

    rows = height.times.map do |h|
      row = height - 1 - h
      y_axis = sprintf "%3d │", row
      cells = width.times.map do |col|
        if robot.x == col && robot.y == row
          " #{ARROWS[robot.direction]} "
        elsif target.x == col && target.y == row
          " ⭑ "
        else
          "   "
        end
      end.join("│")
      "#{y_axis}#{cells}│\n"
    end

    top_border + rows.join(middle_border) + bottom_border + x_axis
  end
end
