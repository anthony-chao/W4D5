def first_anagram?(string)
    arr = string.split("").permutation.to_a
    arr.map! { |word| word.join("")}
end

# p first_anagram?("leonel").length


def second_anagram?(str1, str2)
    return false if str1.length!=str2.length
     word= str2.split("")

    str1.each_char do |char|
        index= word.find_index(char)
        if index.nil?
            return false
            break
        end
        word.delete_at(index)
    end
    word.empty?
end

# p second_anagram?("hello", "helmo")

def third_anagram?(str1, str2)
    #O(n) because the built-in split method is O(n) - it has to do more work as the input scales
    str1.split("").sort == str2.split("").sort

end

# p third_anagram?("hello", "helmo")
# p third_anagram?("woooof", "foooow")

def fourth_anagram?(str1, str2)
    #O(n) because both iterations are not nested
    count1 = Hash.new(0)
    str1.each_char { |ele| count1[ele] += 1 }

    count2 = Hash.new(0)
    str2.each_char { |ele| count2[ele] += 1 }

    count1 == count2
end

# p fourth_anagram?("hello", "helmo")
# p fourth_anagram?("woooof", "foooow")

def fifth_anagram?(str1, str2)

    count1 = Hash.new(0)
    str1.each_char { |ele| count1[ele] += 1 }

    str2.each_char { |ele| count1[ele] -= 1 }

    count1.all? { |k, v| v == 0 }

end

p fifth_anagram?("hello", "helmo")
p fifth_anagram?("woooof", "foooow")