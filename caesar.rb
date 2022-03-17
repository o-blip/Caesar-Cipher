
def caesar_cipher(string, shift)
    # string_ch_array = string.split("").map{|letter| letter.ord}
    code_array = string.bytes
    shifted_code = code_array.map{|char| shift_code(char, shift)}
    shifted_string = shifted_code.pack('c*') # decodes ASCII code and creates string
end




def shift_code(char, shift)
    case char
    when (65..90) # ASCII codes for upper case letters
        shifted_char = char + shift%26
        if shifted_char > 90 
            shifted_char = 65 + shifted_char%91
        end
        return shifted_char

    when (97..122) # ASCII codes for lower case letters
        shifted_char = char + shift%26

        if shifted_char > 122 
            shifted_char = 97 + shifted_char%123
        end
        return shifted_char

    else    # non-letters aren't shifted
        shifted_char = char
    end
end

