require 'rspec'
require_relative '../lib/robot'

RSpec.describe Robot do
  context "when all arguments are valid" do
    it "creates a Robot object" do
      expect { Robot.new x: 1, y: 1, direction: "east" }.not_to raise_error
    end
  end

  context "when all arguments missing" do
    it "creates a (null) Robot object" do
      expect { Robot.new }.not_to raise_error
    end
  end

  context "when some arguments are invalid" do
    it "raises an ArgumentError" do
      [
        {x: "1", y: 1, direction: "east"},
        {x: 1, y: "1", direction: "east"},
        {x: 1, y: 1, direction: "something_else"},
        {x: 1, y: 1, direction: :east},
        {x: 1, y: 1},
        {x: 1, direction: "east"},
        {y: 1, direction: "east"},
      ].each { |args| expect { Robot.new(args) }.to raise_error ArgumentError }
    end
  end
end
