def first_anagram?(string)
    arr = string.split("").permutation.to_a
    arr.map! { |word| word.join("")}
end

p first_anagram?("leonel").length


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

p second_anagram?("hello", "helmo")

