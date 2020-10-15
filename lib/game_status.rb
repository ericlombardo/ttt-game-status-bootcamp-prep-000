# list wining combinations
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

# check if there is a win
def won?(board)
  WIN_COMBINATIONS.each do | combo |
    position_1 = board(combo[0])
    position_2 = board(combo[1])
    position_3 = board(combo[2])

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return combo
    end
  end
end
