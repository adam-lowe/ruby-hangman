class Hangman
    def initialize
        @word = words.sample
        @letter = ('a'..'z').to_a
        @game_finished = false
    end
    def words
        ["variable", "class", "def", "puts", "unless"]
    end

    def check_answer(answer)
        answer = answer.downcase
        if !@letter.include? answer
            puts "You have to guess a letter!"
        elsif @word.include? answer
            puts "That's a correct letter!"
        else
            puts "Incorrect letter"
        end
        
    end

    def guess
        puts @blank
        input = gets.chomp
        check_answer(input)
        if @game_finished == true
            game_end
        else
            guess
        end
    end
    
    
    def start
        @blank = "_ " * @word.length
        puts "This is ruby hangman, guess a letter of a ruby term! your word is #{@word.length} letters long"
        guess
    end
end

game = Hangman.new

game.start