require 'rspec'
require_relative '../lib/world'

RSpec.describe World do
  subject(:world) { described_class.new width: 5, height: 6 }

  it 'has default readers' do
    expect(world.height).to eq(6)
    expect(world.width).to eq(5)

    expect(world.robot).not_to be_nil
    expect(world.robot.x).to be_nil
    expect(world.robot.y).to be_nil
    expect(world.robot.direction).to be_nil

    expect(world.target).not_to be_nil
    expect(world.target.x).to be_nil
    expect(world.target.y).to be_nil
  end

  describe "#place_robot" do
    context 'when placing a robot in a valid position' do
      before { world.place_robot(x: 0, y: 1, direction: :east) }

      it 'should store the position of the robot' do
        expect(world.robot.x).to eq 0
        expect(world.robot.y).to eq 1
        expect(world.robot.direction).to eq :east
      end
    end
  end

  describe "#is_valid?" do
    before { world.place_robot(x: 0, y: 1, direction: :east) }

    it "returns true if the position is valid" do
      expect(world.is_valid? x: 0, y: 0).to be true
      expect(world.is_valid? x: 0, y: 1).to be true
      expect(world.is_valid? x: 1, y: 1).to be true
      expect(world.is_valid? x: 4, y: 4).to be true
      expect(world.is_valid? x: 2, y: 3).to be true
      expect(world.is_valid? x: 2, y: 4).to be true
    end

    it "returns false if the position is not valid" do
      expect(world.is_valid? x: -1, y: 0).to be false
      expect(world.is_valid? x: 10, y: 10).to be false
      expect(world.is_valid? x: 4, y: 40).to be false
      expect(world.is_valid? x: 20, y: 3).to be false
    end
  end

  describe "#is_available?" do
    before { world.place_robot(x: 0, y: 1, direction: :east) }

    it "returns true if the position is available" do
      expect(world.is_available? x: 0, y: 0).to be true
      expect(world.is_available? x: 1, y: 1).to be true
      expect(world.is_available? x: 4, y: 4).to be true
      expect(world.is_available? x: 2, y: 3).to be true
      expect(world.is_available? x: 2, y: 4).to be true
    end

    it "returns false if the position is not available" do
      expect(world.is_available? x: 0, y: 1).to be false
      expect(world.is_available? x: -1, y: 0).to be false
      expect(world.is_available? x: 10, y: 10).to be false
      expect(world.is_available? x: 4, y: 40).to be false
      expect(world.is_available? x: 20, y: 3).to be false
    end
  end

  describe "#next_position_for_robot" do
    context 'when the next position is valid' do
      it 'returns the next position' do
        world.place_robot(x: 0, y: 0, direction: :north)
        expect(world.next_position_for_robot.x).to eq 0
        expect(world.next_position_for_robot.y).to eq 1

        world.place_robot(x: 0, y: 0, direction: :east)
        expect(world.next_position_for_robot.x).to eq 1
        expect(world.next_position_for_robot.y).to eq 0

        world.place_robot(x: 4, y: 4, direction: :south)
        expect(world.next_position_for_robot.x).to eq 4
        expect(world.next_position_for_robot.y).to eq 3

        world.place_robot(x: 4, y: 4, direction: :west)
        expect(world.next_position_for_robot.x).to eq 3
        expect(world.next_position_for_robot.y).to eq 4
      end
    end

    context 'when the next position is not valid' do
      it 'returns the current position' do
        world.place_robot(x: 0, y: 0, direction: :south)
        expect(world.next_position_for_robot.x).to eq 0
        expect(world.next_position_for_robot.y).to eq 0

        world.place_robot(x: 0, y: 0, direction: :west)
        expect(world.next_position_for_robot.x).to eq 0
        expect(world.next_position_for_robot.y).to eq 0

        world.place_robot(x: 4, y: 5, direction: :north)
        expect(world.next_position_for_robot.x).to eq 4
        expect(world.next_position_for_robot.y).to eq 5

        world.place_robot(x: 4, y: 5, direction: :east)
        expect(world.next_position_for_robot.x).to eq 4
        expect(world.next_position_for_robot.y).to eq 5
      end
    end
  end
end
