class Board 

    attr_accessor :grid, :count_turn
 
    def initialize
        a1 = BoardCase.new("A1")
        a2 = BoardCase.new("A2")
        a3 = BoardCase.new("A3")
        b1 = BoardCase.new("B1")
        b2 = BoardCase.new("B2")
        b3 = BoardCase.new("B3")
        c1 = BoardCase.new("C1")
        c2 = BoardCase.new("C2")
        c3 = BoardCase.new("C3")

        @grid = {a1.case_id => a1.value, a2.case_id => a2.value, a3.case_id => a3.value, b1.case_id => b1.value, b2.case_id => b2.value, b3.case_id => b3.value, c1.case_id => c1.value, c2.case_id => c2.value, c3.case_id => c3.value,}
        @count_turn = 0
    end

    def play_turn(player)
        puts
        puts "Which remaining square do you want to play ? "
        print "> "
        choice = gets.chomp
        @grid[choice] = "#{player.player_value}"
        @count_turn = @count_turn + 1
    end

    def victory?
        if @count_turn < 9
            if (@grid["A1"].include?(" ") == false) && @grid["A1"] == @grid["A1"] == @grid["A3"]
                puts "VICTOIRE"
                puts
                return true
            
            elsif (@grid["B1"].include?(" ") == false) && @grid["B1"] == @grid["B2"] && @grid["B1"] == @grid["B3"]
                puts "VICTOIRE"
                puts
                return true
            
            elsif (@grid["C1"].include?(" ") == false) && @grid["C1"] == @grid["C2"] && @grid["C1"] == @grid["C3"]
                puts "VICTOIRE"
                puts
                return true

            elsif (@grid["A1"].include?(" ") == false) && @grid["A1"] == @grid["B1"] && @grid["A1"] == @grid["C1"]
                puts "VICTOIRE"
                puts
                return true

            elsif (@grid["A2"].include?(" ") == false) && @grid["A2"] == @grid["B2"] && @grid["A2"] == @grid["C2"]
                puts "VICTOIRE"
                puts
                return true

            elsif (@grid["A3"].include?(" ") == false) && @grid["A3"] == @grid["B3"] && @grid["A3"] == @grid["C3"]
                puts "VICTOIRE"
                puts
                return true

            elsif (@grid["A3"].include?(" ") == false) && @grid["C1"] == @grid["B2"] && @grid["B2"] == @grid["A3"]
                puts "VICTOIRE"
                puts
                return true

            elsif (@grid["A1"].include?(" ") == false) && @grid["A1"] == @grid["B2"] && @grid["B2"] == @grid["C3"]
                puts "VICTOIRE"
                puts
                return true
            end
        else
            puts "The games is over and it's a draw my friends ! "
        end
    end
end




end