require 'rspec'
require_relative '../lib/game'

RSpec.describe Game do
  subject(:game) { Game.new(width: 5, height: 6, quiet: true, delay: 0) }

  before do
    game.place_robot(x: 0, y: 0, direction: :east)
  end

  it "keeps track of robot moves" do
    2.times { game.move_robot }
    expect(game.moves).to eq 2
    expect(game.robot.x).to eq 2
    expect(game.robot.y).to eq 0
    expect(game.robot.direction).to eq :east
  end

  it "places a target" do
    game.place_target(x: 4, y: 4)
    expect(game.target.x).to eq 4
    expect(game.target.y).to eq 4
  end

end
