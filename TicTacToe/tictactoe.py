def print_board(b):
    for i in range(0, 9, 3):
        print(b[i:i+3])


def is_valid_input(b, row, col):
    return 0 <= row and row <= 2 and 0 <= col and col <= 2 and b[row * 3 + col] == '.'


def read_input(b):
    row, col = -1, -1
    while not is_valid_input(b, row, col):
        print('Please enter row (0, 1, 2): ')
        row = int(input())
        print('Please enter col (0, 1, 2): ')
        col = int(input())
    return row * 3 + col


def play_turn(b, player):
    print('Player ' + player + '\'s Turn')
    b[read_input(b)] = player


def has_someone_won(b):
    return any(b[i] == b[j] and b[i] == b[k] and b[i] != '.' for i, j, k in wins)


wins = [[0, 4, 8], [0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8], [2, 4, 6]]

print('TicTacToe - Python')
board = ['.'] * 9
turn = 'O'

while not has_someone_won(board):
    turn = 'X' if turn == 'O' else 'O'
    play_turn(board, turn)
    print_board(board)

print('==>', turn, "won :)")
