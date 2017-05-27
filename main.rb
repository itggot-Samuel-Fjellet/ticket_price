def main
    age = ask_age
    ticket_price(age)
end

def ask_age
    puts "Please enter your age."
    age = gets.chomp.to_i
    return age
end

def ticket_price(age)
    if age.between?(1, 17)
        puts "That will be 10kr."
    elsif age.between?(18, 64)
        puts "That will be 20kr."
    elsif age > 64
        puts "That will be 15kr."
    else
        puts "Error, please try again."
        main
    end
end

main