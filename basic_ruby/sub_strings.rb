# finds matches words and substrings from two inputs a sentence and a dictionary

require 'pry'
def substrings(sentence, dictionary)
    
    counter = 0
    substring = {}
    substring.default = 0
    sentence.downcase!
    words = sentence.scan(/[\w-]+|[[:punct:]]+/)
    # look into loop options
    # because output is skipping
    
    dictionary.length().times {
        # If the dictionary contains the first word in sentence then
        if dictionary.include?(words[counter])
            dictionary.length().times{ |i|
                if words[counter].include?(dictionary[i])
                    substring[dictionary[i]] +=1
                end
            }
        end
        counter +=1
    }
    print substring
end


=begin
# This is when using the words of the string as a counter/length to loop
    split_words.length().times{
        # with each word i want it to check if it is in the dict
        if dictionary.any?(split_words[counter])
            new_counter = 1
            substring = {}
            substring[split_words[counter]] = new_counter
            print substring
            new_counter+=1
        end
        counter += 1
    }
end
=end
dictionary = ["below","hello","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
