def display_board(board, i, player="X")

end

def input_to_index(ui)
  if ui.to_i == 0
    return -1
  end
  return ui.to_i + 1
end

def valid_move?(board, i)
  if board.size <= i || i < 0
    return false
  end

  if board[i] == 'X' || board[i] == 'O'
    return false
  else
    return true
  end
end

def move(board, i, player="X")
  if valid_move(board, i)
    board[i] = player
  end
  return board
end