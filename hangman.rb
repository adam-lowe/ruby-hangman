class Hangman
    def check
        puts "Input anything!"
        input = gets.chomp
        puts "You put #{input}"
    end
end

game = Hangman.new

game.check