TicTacToe
=========

InsideOut version

Just thinking about other domain entities, e.g. Player, Presenter? Rules?


```
move = player.choose_move(board) # move TicTacToe.valid_moves inside Player choose_move
board.contents_of(move).hold(player.symbol)
```

player might want to know full state of board

basically could move towards engine that can play game independently of representation ...

