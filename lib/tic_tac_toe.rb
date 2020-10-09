require 'pry'
class TicTacToe

    def initialize(board = nil)
        @board = board || Array.new(9," ")

    end 

    WIN_COMBINATIONS = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [2,4,6]
    ]

    # def display_board
    #     print @board 
    # end

    def input_to_index(input)
        input = input.to_i - 1
    end

    def move(index, token = "X")
        if token == "X"
            @board[0] = "X"
        elsif token == "O"
            @board[4] = "O"
        end
    end

    def position_taken?(index)
        if @board[index] == "X" || @board[index] == "O"
            true
        elsif @board[index] == " "
            false 
        end
    end

    def valid_move?(position)
        if @board[position] == "X" || @board[position] == "O"
            false 
        elsif @board[position] == " "
            true 
        elsif @board[position] == nil 
            nil
        end
    end

    def turn
        puts "What is your input?"
        input = gets.chomp
        index = input_to_index(input)
        if valid_move?(index) && position_taken?(index)
            move(index, token)
        else 
            puts "What is your input?"
        end

    end
    
end