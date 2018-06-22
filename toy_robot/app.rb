MAP = {
  width: 5,
  height: 5
}

ROBOT = {
  x: 0,
  y: 0,
  direction: :east
}

TARGET = {
  x: 4,
  y: 4
}



CSI = "\e["
CLEAR = "#{CSI}H#{CSI}J"

ARROWS = {
  west: '←',
  north: '↑',
  east: '→',
  south: '↓',
}


def ascii_map(map:, robot:, target:)
  width = map[:width]
  height = map[:height]

  top_border    = "    ┌#{ "───┬" * (width - 1) }───┐\n"
  middle_border = "    ├#{ "───┼" * (width - 1) }───┤\n"
  bottom_border = "    └#{ "───┴" * (width - 1) }───┘\n"
  x_axis        = "      #{width.times.map.to_a.join("   ")}\n"

  rows = height.times.map do |h|
    row = height - 1 - h
    y_axis = sprintf "%3d │", row
    cells = width.times.map do |col|
      if robot[:x] == row && robot[:y] == col
        " #{ARROWS[robot[:direction]]} "
      elsif target[:x] == row && target[:y] == col
        " ⭑ "
      else
        "   "
      end
    end.join("│")
    "#{y_axis}#{cells}│\n"
  end

  top_border + rows.join(middle_border) + bottom_border + x_axis
end

def print_frame(map:, robot:, target:, number_of_moves:)
  print CLEAR
  puts "Robot map:"
  puts
  puts ascii_map map: map, robot: robot, target: target
  puts
  puts "Moves: #{number_of_moves}"
end

print_frame(
  map: MAP,
  robot: ROBOT,
  target: TARGET,
  number_of_moves: 0
)
