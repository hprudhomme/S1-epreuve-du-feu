x = 0

while x < ARGV.length
    ARGV[x] = ARGV[x].to_i
    x += 1
end

x = 0;

while x < ARGV.length - 1
    if ARGV[x + 1] < ARGV[x]
        i = ARGV[x]
        ARGV[x] = ARGV[x + 1]
        ARGV[x + 1] = i
        x = 0
    else
        x += 1;
    end
end

print ARGV
puts "\n"
