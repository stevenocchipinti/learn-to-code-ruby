require 'rspec'
require_relative '../lib/game'

RSpec.describe Game do
  subject(:game) { Game.new(width: 5, height: 6, quiet: true, delay: 0) }

  before do
    game.place_robot(x: 0, y: 0, direction: :east)
  end

  it "knows where the robot is once its been placed" do
    expect(game.robot.x).to eq 0
    expect(game.robot.y).to eq 0
    expect(game.robot.direction).to eq :east
  end

  it "knows where the target is once its been placed" do
    game.place_target(x: 3, y: 4)
    expect(game.target.x).to eq 3
    expect(game.target.y).to eq 4
  end

  context "when the robot is moved" do
    before { 2.times { game.move_robot } }

    it "keeps track of the moves" do
      expect(game.moves).to eq 2
      expect(game.robot.x).to eq 2
      expect(game.robot.y).to eq 0
      expect(game.robot.direction).to eq :east
    end
  end
end
