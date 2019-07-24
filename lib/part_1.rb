def my_map(array, &prc)
    new_arr = []
    array.each { |ele| new_arr << prc.call(ele) }
    new_arr
end

# If using a map, it accepts a block. prc is a proc and need to convert it back to a block
# def my_map(array, &prc)
#     array.map(&prc)
# end



def my_select(array, &prc)
    new_arr = []
    array.each do |num|
        if prc.call(num) == true
            new_arr << num
        end
    end
    new_arr
end



def my_count(array, &prc)
    count = 0
    array.each do |ele|
        if prc.call(ele) == true
            count += 1
        end
    end
    count
end



def my_any?(array, &prc)
    array.each do |ele|
        if prc.call(ele) == true
            return true
        end
    end
    false
end



def my_all?(array, &prc)
    array.each do |ele|
        if prc.call(ele) == false
            return false
        end
    end
    true
end




def my_none?(array, &prc)
    array.each do |ele|
        if prc.call(ele) == true
            return false
        end
    end
    true
end

