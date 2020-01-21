class Hangman
    def initialize
        @word = words.sample
        @letter = ('a'..'z').to_a
    end
    def words
        ["variable", "class", "def", "puts", "unless"]
    end

    def check_answer(answer)
        answer = answer.downcase
        unless @letter.include? answer
            puts "You have to guess a letter!"
        end
        
    end
    
    def start
        puts "This is ruby hangman, guess a letter of a ruby term! your word is #{@word.length} letters long"
        puts "_ " * @word.length
        input = gets.chomp
        check_answer(input)
    end
end

game = Hangman.new

game.start