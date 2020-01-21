class Hangman
    def initialize
        @word = words.sample
    end
    def words
        ["Base"]
    end
    
    def check
        puts "Input anything!"
        input = gets.chomp
        puts "You put #{input}, and the word is #{@word}"
    end
end

game = Hangman.new

game.check