require 'rspec'
require_relative '../lib/target'

RSpec.describe Target do
  context "when the arguments are valid" do
    it "creates a Target object" do
      [
        {x: 1, y: 1, callback: -> {}},
        {x: 1, y: 1},
        {x: 1, callback: -> {}},
        {y: 1, callback: -> {}},
        {x: 1},
        {y: 1},
        {callback: -> {}}
      ].each { |args| expect { Target.new(args) }.not_to raise_error }
    end
  end

  context "when some arguments are invalid" do
    it "raises an ArgumentError" do
      [
        {x: "1", y: 1, callback: -> {}},
        {x: 1, y: "1", callback: -> {}},
        {x: 1, y: 1, callback: :something_else},
        {x: 1, y: 1, callback: "east"},
        {x: 1, callback: :east},
        {y: 1, callback: :east},
      ].each { |args| expect { Target.new(args) }.to raise_error ArgumentError }
    end
  end
end
