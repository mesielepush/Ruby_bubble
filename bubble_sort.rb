# frozen_string_literal: true
def bubble_sort(list)
  iter = list.size - 2
  max_iter = list.size - 2
  while max_iter >= 2
    swap = false
    0.upto(iter) do |i|
      if list[i] > list[i + 1]
        list[i], list[i + 1] = list[i + 1], list[i]
        swap = true
      end
    end
    max_iter -= 1
    puts 'max_iter: ', max_iter
    break unless swap
  end
  list
end

def bubble_sort_by(list)
  loop do
    swap = false
    (list.length - 1).times do |i|
      if yield(list[i], list[i + 1]).positive?
        list[i], list[i + 1] = list[i + 1], list[i]
        swap = true
      end
    end
    break unless swap
  end
  list
end
print (bubble_sort_by(["hello", "hey", "hi"]) do |left, right|
  left.length - right.length
  end)

