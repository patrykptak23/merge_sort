def merge_sort(array)
    return array if array.length < 2
    cut_array = array.length / 2
    left_side = merge_sort(array[0..cut_array - 1])
    right_side = merge_sort(array[cut_array..-1])
    sorted = []
    until left_side.empty? || right_side.empty?
        if left_side[0] <= right_side[0]
            sorted << left_side.shift
        else
            sorted << right_side.shift
        end
    end
    return sorted + left_side + right_side
  end
  
p merge_sort([5,1,-3,50,2,10,8,69,22])

# [-3, 1, 2, 5, 8, 10, 22, 50, 69]
