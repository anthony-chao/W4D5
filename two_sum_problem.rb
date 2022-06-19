def bad_two_sum?(array, target)

    #O(n^2) because of the nested loop
    new_arr = []

    array.each.with_index do |ele1, idx1|
        array.each.with_index do |ele2, idx2|
            new_arr << ele1 + ele2 if idx1 < idx2
        end
    end
    
    new_arr.include?(target)
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(array, target)

    sorted_array = array.sort

    i = 0
    y = array.length - 1
    mid_idx = array.length / 2

    while i < y
        if array[i] + array[y] == target
            return true
        elsif array[i] + array[y] > target
            y -= 1
        else
            i += 1
        end
    end

    false

end

# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


def two_sum?(array, target)

    hash = {}

    array.each { |ele| hash[ele] = target - ele }

    hash.each do |k, v| 
        if k == hash[v] && hash[k] == v && k != v
            return true
        end
    end

    false
end



p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false
p two_sum?(arr, 8) # => should be true
p two_sum?(arr, 3) # => should be false