puts "please enter your word:\n"
user = gets.chomp
puts "please enter number (to increase or decrease):\n"
num = Integer(gets) rescue nil

bruh = user.bytes # .bytes method is very important and it returns it in a form of an array

new_bruh = bruh.map do |item|
    test = item + num
    case item
    when 65..90
        if (test) > 90 # test to loop over 'Z'
            item += num
            item -= 26
        else
            item += num
        end
    when 97..122
        if (test) > 122 # test to loop over 'z'
            item += num
            item -= 26
        else
            item += num
        end
    end
    item = item.chr
end

puts "Result:\n#{new_bruh.join("")}"