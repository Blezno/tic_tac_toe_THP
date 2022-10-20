class Application

    def self.perform

        puts "THE TIC TAC TOE"
        puts 
        puts "HOPE YOU ENJOY ! "
        puts
        puts "/_\ To play wirte the boxes in this format : A1/B1 etc. "
        puts
        game = Game.new
        count = 1

        while(true)
            game.turn(game.player1)
            count += 1

            if (game.board.victory? == true) || count >= 9
                break
            end

            game.turn(game.player2)
            count += 1

            if (game.board.victory? == true) || count >= 9
                break
            end
        end
    end
end
