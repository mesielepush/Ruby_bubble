
def bubble_sort(list)
    iter = list.size - 2
    max_iter = list.size - 2
    while max_iter >= 2
        swap = false
        0.upto(iter) do |i|
            if list[i] > list[i+1]
                list[i], list[i+1] = list[i+1], list[i]
                swap = true
            end
        end

        max_iter -= 1
        puts 'max_iter: ', max_iter
        if swap == false
            break
        end
    end
    return list
end

