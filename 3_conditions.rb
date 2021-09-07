def check_sign(num)
    if num > 0
        puts "#{num} is positive"
    else
        puts "#{num} is negative"
    end
end

check_sign(5)

# The ternary operator
def check_number(num)
    return num > 0 ? "#{num} is positive" : "#{num} is negative"
end

puts check_number(2)