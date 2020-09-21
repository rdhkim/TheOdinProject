#> stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12

# The code looks to find the biggest difference from d2 and d1 selling in chronological order of days

def stock_picker(stock_array)
    buy_sell_output = []
    real_output = []
    largest_difference = 0
    
    for i in 0...stock_array.length() 
        for j in 0...stock_array.length()
            if j > i and stock_array[j] - stock_array[i] > largest_difference
            largest_difference  = stock_array[j] - stock_array[i]
            buy_sell_output.push(stock_array[i])
            buy_sell_output.push(stock_array[j])
            end
            
        end
    end
    buy_sell_output.sort!()
    #print buy_sell_output[0]
    # = 3
    #print buy_sell_output.last
    # = 15

    real_output.push(stock_array.index(buy_sell_output[0]))
    real_output.push(stock_array.index(buy_sell_output.last))
    print real_output
end




stock_picker([6,3,2,1,5])


#try using a sorted list of numbers
# to find the biggest difference
#and check if that difference is in order buy -> sell