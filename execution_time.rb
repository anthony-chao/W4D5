require "byebug"

def my_min(arr)

    # minimum=arr.first

    # arr.each do |ele| #O(n)
    #     minimum=ele if ele < minimum
    # end

    # minimum
    arr.each do |ele1| #O(n)
        return ele1 if arr.none? { |ele2| ele2 < ele1 } #O(n)
    end #O(n^2)
end
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)

def largest_contiguous_subsum(list)

    array = []
    list.each.with_index do |ele1, idx1|
        list.each.with_index do |ele2, idx2|
            array << list[idx1..idx2].sum if idx2 > idx1
        end
    end
    array.max
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])