# User facing robot-related operations
class RobotController
  attr_reader :turns
  DELAY = 1

  def initialize(robot:, world:, game:)
    @robot = robot
    @world = world
    @game = game
    @turns = 0
  end

  def move
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

