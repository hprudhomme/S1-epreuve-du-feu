c3 = ARGV[1];
word_to_find = ARGV[0]

words = [];
position = 0;

File.foreach(c3) { |line| words[position] = line.chomp.split(''); position += 1 }

puts words[0].count
puts words[1].count
puts words[2].count
puts words[3].count
puts words[4].count

puts word_to_find.length

annagrames = []


def annagrame(word_to_find, word, annagrames)
    x = 0
    counter = 0
    while x < word_to_find.length
        y = 0
        while y < word_to_find.length
            if word_to_find[x] == word[y]
                counter += 1
                if counter == word_to_find.length
                    annagrames.push(word)
                    return 1
                end
            end
            y += 1
        end
        x += 1
    end
end

x = 0

while x < words.length
    if word_to_find.length == words[x].length
        annagrame(word_to_find, words[x], annagrames)
    end
    x += 1
end

z = 0
while z < annagrames.length
    annagrames[z] = annagrames[z].join('')
    z += 1
end
        




puts annagrames.inspect
