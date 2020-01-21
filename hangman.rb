class Hangman
    def initialize
        @word = words.sample
    end
    def words
        ["variable", "class", "def"]
    end
    
    def check
        puts "This is ruby hangman, guess a ruby term! your word is #{@word.length} letters long"
        input = gets.chomp
        puts "You put #{input}, and the word is #{@word}"
    end
end

game = Hangman.new

game.check