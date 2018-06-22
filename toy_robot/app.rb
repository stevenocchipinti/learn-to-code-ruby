require_relative './lib/console'

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


print_frame(
  map: MAP,
  robot: ROBOT,
  target: TARGET,
  number_of_moves: 0
)
