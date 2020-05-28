string = ARGV[0];

x = 0;

while x < string.length
    if x % 2 == 0
        print string[x].downcase;
        x += 1
    else
        print string[x].upcase;
        x += 1
    end
end

puts "\n"