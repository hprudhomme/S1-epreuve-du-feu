c1 = ARGV[0];
c2 = ARGV[1];

square_to_find = [];
position = 0;

File.foreach(c1) { |line| square_to_find[position] = line.chomp.split('').map(&:to_i); position += 1 }

puts square_to_find.inspect

data = [];
position = 0;

File.foreach(c2) { |line| data[position] = line.chomp.split('').map(&:to_i); position += 1 }

puts data.inspect

def is_it_a_match(square_to_find, data, line, column)
    z = 0
    line1 = 0;
    while line1 < square_to_find.count
        column1 = 0;
        while column1 < square_to_find.count
            if square_to_find[line1][column1] == data[line + line1][column + column1]
                z += 1
            else
                return 0
            end
            column1 += 1
        end
        line1 += 1
    end
    return z
end


def find_square(square_to_find, data)
    line = 0;
    while (line < data.count)
        i = square_to_find.count * square_to_find.count;
        column = 0;    
        while (column < data[line].count)
            if (data[line][column] == square_to_find[0][0])
                if (is_it_a_match(square_to_find, data, line, column)) == i;
                    return 1;
                end
            end
            column += 1;
        end
        print "\n";
        line += 1;
    end
end

if (find_square(square_to_find, data))
    puts "it's a match"
else
    puts "no match"
end