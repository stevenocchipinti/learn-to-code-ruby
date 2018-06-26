# User facing robot-related operations
class RobotController
  attr_reader :turns
  DELAY = 0.5

  def initialize(robot:, world:, game:)
    @robot = robot
    @world = world
    @game = game
    @turns = 0
  end

  def move
    @world.move_robot
    take_turn
    print
  end

  def print
    @game.print
  end

  private

  def take_turn
    sleep DELAY
    @turns += 1
  end
end

