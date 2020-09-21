# Caesar cipher is when you have a message as an input and outputs a new message who's characters/letters 
# have been shifted x number of times to the right (and loops around from Z->A if required)
def Caesar_cipher(input_string,input_shift)

    alphabet = ('a'..'z').to_a
    alphabetUpCase = ('A'..'Z').to_a

    input_string.each_char {|letter| 
        if letter  =~ /[A-Z]/
            new_letter_index = alphabetUpCase.index(letter) + input_shift
            if new_letter_index > 25
                new_letter_index -= 26
                puts alphabetUpCase[new_letter_index]
            else
                puts alphabetUpCase[new_letter_index]
            end
        elsif letter =~ /[a-z]/
            new_letter_index = alphabet.index(letter) + input_shift
            if new_letter_index > 25
                new_letter_index -= 25
                puts alphabet[new_letter_index]
            else
                puts alphabet[new_letter_index]
            end
        else
            puts letter
        end
    }
end

Caesar_cipher("Hello World!",4)

#for each letter i want to find the index of that letter
#in the cap/lowercase array of letters
#and then add the shift to that indedx and output the 
#new letter
#test