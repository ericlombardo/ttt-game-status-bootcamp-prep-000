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
  # loop through WIN_COMBINATIONS to see if any fit criteria below
  WIN_COMBINATIONS.any? do | combo |
    # check if all elements in combo are "X" or "O"
    test = combo.all? do | elem |
      elem == "X"
    end
    if test == true
      return combo
    end
  end
end
