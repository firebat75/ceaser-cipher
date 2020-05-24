def ceaser_cipher(string, shift)
    return string.split("").map { |char|
        # output += ((char.ord)+shift).chr
        if 64 < char.ord && char.ord < 91
            if ((char.ord) + shift) > 90
                char = (((char.ord)+shift)-26).chr
            else
                char = ((char.ord)+shift).chr
            end

        elsif 96 < char.ord && char.ord < 123
            if ((char.ord) + shift) > 122
                char = (((char.ord)+shift)-26).chr
            else
                char = ((char.ord)+shift).chr
            end
        else
            char = char
        end
    }.join
end


print "Enter the text you want to encrypt:"
input = gets.chomp
print "Enter the shift factor of encryption (Integer from 0-26):"
shiftfactor = gets.chomp.to_i

puts ceaser_cipher(input, shiftfactor)