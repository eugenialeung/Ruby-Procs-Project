def reverser(string, &prc)
    # reverse the string first and then give it into the block
    prc.call(string.reverse)
end



def word_changer(string, &prc)
    words = string.split(" ")
    new_words = []
    words.each do |word|
        new_words << prc.call(word)
    end 
    new_words.join(" ")
end


def greater_proc_value(num, prc1, prc2)
    result1 = prc1.call(num)
    result2 = prc2.call(num)
    if result1 > result2
        return result1
    else
        return result2
    end
end




def and_selector(array, prc1, prc2)
    new_arr = []
    array.each do |ele|
        if prc1.call(ele) && prc2.call(ele)
            new_arr << ele
        end
    end
    new_arr
end




def alternating_mapper(array, prc1, prc2)
    new_arr = []
    array.each_with_index do |ele, i|
        if i.even?
            new_arr << prc1.call(ele)
        else 
            new_arr << prc2.call(ele)
        end
    end
    new_arr
end

