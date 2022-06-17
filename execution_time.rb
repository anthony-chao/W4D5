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

# def largest_contiguous_subsum(list)

#     array = []
#     list.each.with_index do |ele1, idx1| #O(n)
#         list.each.with_index do |ele2, idx2| #O(n)
#             array << list[idx1..idx2].sum if idx2 > idx1 #O(n)
#         end
#     end
#     array.max# O(n)

#     #O(n + n^3)
# end

# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

# [2], [2,3], [2,3,-6], [2,3,-6,7]
# [0], [0..1], [0..2], [0..3]


def largest_contiguous_subsum(list)

max = list.first
current = list.first #if current > max, current = max
#if current is less than 0, we set current == 0
    list.drop(1).each do |ele|
        current += ele
        max = current if current > max
        current = 0 if current.negative
    end
    max
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

        