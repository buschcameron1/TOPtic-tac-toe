class Player
    attr_accessor :name, :symbol

    def initialize(name, symbol)
        @name = name
        @symbol = symbol
    end
end


def new_board
    board = Array.new(9)
    pos = 0
    board.each_with_index do |_data, x|
        pos += 1
        board[x] = pos
    end
end

def draw_board (board)
    puts "#{board[0]}|#{board[1]}|#{board[2]}"
    puts '-----'
    puts "#{board[3]}|#{board[4]}|#{board[5]}"
    puts '-----'
    puts "#{board[6]}|#{board[7]}|#{board[8]}"
end

def play_round (board)
    player_pos = 0
    drawBoard board
    puts 'Player 1 select position'
    loop do
        player_pos = gets.chomp.to_i
        break if player_pos.between?(1, 9)

        puts 'Invalid input, please try again'
    end
    if board[player_pos - 1] != "X" && board[player_pos - 1] != "O"
        board[player_pos - 1] = 'X'
    else 
        puts 'Space taken, please try again'
        loop do
            player_pos = gets.chomp.to_i
            break if player_pos.between?(1, 9) == false
    
            puts 'Invalid input, please try again'
        end
    end
end

def player_names
    puts 'Please enter name for player 1'
    player1 = Player.new(player1.name = gets.chomp,'X')
    puts 'Please enter name for player 2'
    player2 = Player.new(player2.name = gets.chomp,'O')
end
