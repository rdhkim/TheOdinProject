#Build the game assuming the computer randomly selects the secret colors and the human player must guess them. 
#Remember that you need to give the proper feedback on how good the guess was each turn!


class Mastermind
    def initialize
        # initializes a new game and creates a new random set of colors
        # creates an array with 4 random colors from colors_arr
        @new_game_code = Array.new
        @colors_arr = Array.new
        @colors_arr += ["Green","Red","Yellow","Blue","Orange","Purple"]# , "Blank"] if we want to add blanks
        # if we want to add duplicates @colors_arr *= 4
        @new_game_code = @colors_arr.sample(4)

    end
    
    def start_game
        print @colors_arr

        puts "Enter four colors to break the code. Ex. red Blue Yellow green (not case sensitive)"
        # gets user response and stores it into an array (and capitalizes it)
        @guess = gets.chomp.split().to_a
        @guess = @guess.map(&:capitalize)

        # looping until the length of the reponse matches colors_arr and had a length of 4
        until @guess.length == 4 and @guess.all?{|i| @colors_arr.include? i} 
            puts "Enter four colors to break the code. Ex. red Blue blank green (not case sensitive)"
            @guess = gets.chomp.split().to_a
            @guess = @guess.map(&:capitalize)
        end

        check_colors()
    end
        
    #until guess == @new_game_code or i == 12


=begin
        until guess == chomp or i = 12
            i+=1
            puts "Enter your guess to break the code."
            guess = gets.chomp
=end
            
    

    def check_colors()
        @output = Array.new
        if @guess[0] == @new_game_code[0]
            @output.push("White peg")
        elsif @guess[0].include?@new_game_code
        end
    end

end

new_game = Mastermind.new

new_game.start_game