class Show

    def show_board(board)
        board.grid.each.with_index do |cell, index|
            if (index%3 == 0)
                puts
            end
            print "|#{cell[1]}|"
        end
        puts
        return false
    end
end
