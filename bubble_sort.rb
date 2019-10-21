list = [9,8,7,4,5,6,1,2,3]
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
a = bubble_sort(list)
print a




"""def bubble_sort(list)
    max_iter = list.size - 1
    iter = list.size - 1
    while max_iter >= 2
      swap = false
      0.upto(iter) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i]
        swap = true
        print list
        end
      max_iter -= 1
      end
      max_iter -= 1
      puts 'max_iter = ',max_iter
      if swap == false
        puts 'FALSE'
        break
      end
    return list
  end
  end

list = [9,8,7,4,5,6,1,2,3]
a = bubble_sort(list)
puts a"""