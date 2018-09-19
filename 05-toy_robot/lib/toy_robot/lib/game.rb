require_relative './world'
require_relative './world_printer'

trap "SIGINT" do
  exit
end

# User facing operations
class Game
  attr_reader :moves

  def initialize(width=5, height=5, delay=0.5, quiet=false)
    @world = World.new(width: width, height: height)
    @moves = 0
    @delay = delay
    @quiet = quiet
    print
  end

  def print
    return if @quiet
    WorldPrinter.print_frame(world: @world, number_of_moves: @moves || 0)
    true
  end

  def place_robot(x, y, direction)
    @world.place_robot(x: x, y: y, direction: direction)
    print
  end

  def place_target(x=nil, y=nil)
    @world.place_target(
      x: x,
      y: y,
      when_reached: lambda(&method(:win!))
    )
    print
  end

  def move_robot
    @world.move_robot
    take_turn
    print
  end

  def rotate_robot_left
    @world.rotate_robot_left
    take_turn
    print
  end

  def rotate_robot_right
    @world.rotate_robot_right
    take_turn
    print
  end

  def robot
    @world.robot
  end

  def target
    @world.target
  end

  private

  def take_turn
    sleep @delay
    @moves += 1
  end

  def win!
    take_turn
    print
    puts "\n  🎉  You win! 🎉  \n\n"
    exit
  end
end
