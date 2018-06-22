MAP_SIZE = [5, 5] # W x H
ROBOT = {
  height: 0,
  width: 0,
  direction: :north
}
TARGET = [4, 4]



CSI = "\e["
CLEAR = "#{CSI}H#{CSI}J"

DIRECTIONS = {
  west: '←',
  north: '↑',
  east: '→',
  south: '↓',
}

def print_frame(number_of_moves=0)
  print CLEAR
  puts "Robot map:"
  puts
  puts "    ┌───┬───┬───┬───┬───┐"
  puts "  4 │   │   │   │   │ ⭑ │"
  puts "    ├───┼───┼───┼───┼───┤"
  puts "  3 │   │   │   │   │   │"
  puts "    ├───┼───┼───┼───┼───┤"
  puts "  2 │   │   │   │   │   │"
  puts "    ├───┼───┼───┼───┼───┤"
  puts "  1 │   │   │   │   │   │"
  puts "    ├───┼───┼───┼───┼───┤"
  puts "  0 │ → │   │   │   │   │"
  puts "    └───┴───┴───┴───┴───┘"
  puts "      0   1   2   3   4  "
  puts
  puts "Moves: #{number_of_moves}"
end

print_frame 0
