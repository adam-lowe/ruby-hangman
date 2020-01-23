class Hangman
    def initialize
        @word = words.sample
        @letter = ('a'..'z').to_a
        @game_status = [0, @word.length]
        @blank = "_ " * @word.length
    end
    def words
        ["variable", "class", "def", "puts", "unless"]
    end

    def check_answer(answer)
        answer = answer.downcase
        if !@letter.include? answer
            puts "You have to guess a new letter!"
        elsif @word.include? answer
            puts "That's a correct letter!"
            matches = @word.split("").each_index.select{|i| @word[i] == answer}
            matches.each { |i| @blank[i*2] = answer}
            @game_status[0] += 1
            @letter.delete(answer)
        else
            puts "Incorrect letter"
        end
        
    end

    def guess
        puts @blank
        input = gets.chomp
        check_answer(input)
        if @game_status[0] == @game_status[1] 
            game_end
        else
            guess
        end
    end
    
    
    def start
        puts "This is ruby hangman, guess a letter of a ruby term! your word is #{@word.length} letters long"
        guess
    end

    def game_end
        p "Congrats! You got the whole word! #{@word}! Pat youself on the back!"
    end
    
end

game = Hangman.new

game.start