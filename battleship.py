from random import randint

board = ['']

for x in range(1, 6):
    board.append(['O'] * 5)

def print_board(board):
    for row in board:
        print ' '.join(row)

def random_row(board):
    return randint(1, len(board) - 2)

def random_col(board):
    return randint(1, len(board) - 2)

ship_row = random_row(board)
ship_col = random_col(board)

board[ship_row][ship_col - 1] = 'S'

print_board(board)

print
print 'Ship row: %s' % ship_row
print 'Ship col: %s' % ship_col
print

def battleship():
    guess_row = int(raw_input('Guess Row: '))
    guess_col = int(raw_input('Guess Col: '))

    if guess_row == ship_row and guess_col == ship_col:
        print 'Congratulation! You sank my battleship!'
    else:
        if guess_row not in range(5) or \
           guess_col not in range(5):
                print 'Oops that\'s not even in the ocean.'
                print_board(board)
                battleship()
        else:
            print 'You missed my battleship!'

            board[guess_row][guess_col - 1] = 'X'
            print_board(board)
            battleship()

battleship()
