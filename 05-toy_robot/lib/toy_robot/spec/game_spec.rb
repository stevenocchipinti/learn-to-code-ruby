require 'rspec'
require_relative '../lib/game'

RSpec.describe Game do
  subject(:game) { Game.new(5, 6, 0, true) }

  before do
    game.place_robot(0, 0, "east")
  end

  it "knows where the robot is once its been placed" do
    expect(game.robot.x).to eq 0
    expect(game.robot.y).to eq 0
    expect(game.robot.direction).to eq "east"
  end

  context "when target coordinates are provided" do
    it "is placed at that position" do
      game.place_target(3, 4)
      expect(game.target.x).to eq 3
      expect(game.target.y).to eq 4
    end
  end

  context "when target coordinates are not provided" do
    it "is placed in a random location" do
      10.times do
        game.place_target
        expect(game.target.x).to be_between(0, 4)
        expect(game.target.y).to be_between(0, 5)
      end
    end
  end

  context "when the robot is moved" do
    before do
      game.move_robot
      game.move_robot
      game.rotate_robot_left
      game.move_robot
      game.move_robot
      game.rotate_robot_right
      game.move_robot
      game.move_robot
    end

    it "keeps track of the moves" do
      expect(game.moves).to eq 8
      expect(game.robot.x).to eq 4
      expect(game.robot.y).to eq 2
      expect(game.robot.direction).to eq "east"
    end
  end

  it "does not allow mutation of the robot directly" do
    expect { game.robot.x = 4 }.to raise_error NoMethodError
    expect(game.robot.x).to eq 0
  end

  it "does not allow mutation of the target directly" do
    expect { game.target.x = 4 }.to raise_error NoMethodError
    expect(game.robot.x).to eq 0
  end
end
