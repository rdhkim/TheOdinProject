# bubble sort is when you compare numbers next to each other and sort from least to greatest 


#loop until the last number is the biggest in the array
# do for all numbers                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           akkkkaakkkkkkakakb

#if arr[i] < arr[j]
#arr[j], arr[i] = arr[i], arr[j]

def bubble_sort(arr)
    arr1 = arr.to_a
    
    for n in 0...arr1.length()
        for j in 0...arr1.length()
                if arr[j+1] == nil
                    break
                elsif arr[j] > arr[j+1]
                    arr[j], arr[j+1] = arr[j+1], arr[j]
                end
            end         
        end
    print arr
end

bubble_sort([4,3,78,2,0,2,100,103,22,1,0,5])