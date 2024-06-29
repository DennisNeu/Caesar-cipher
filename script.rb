def shift_ascii_array(ascii_array, shift_factor)
  ascii_array.map do |char|
    if char.is_a?(Integer)
      if (char >= 65 && char <= 90)
        shift_char = char + shift_factor
        if shift_char > 90
          overhead = shift_char - 91
          shift_char = 65 + overhead
        end
        shift_char
      elsif (char >= 97 && char <= 122)
        shift_char = char + shift_factor
        if shift_char > 122
          overhead = shift_char - 123
          shift_char = 97 + overhead
        end
        shift_char
      end
    else
      char
    end
  end
end

def translate_to_char(array = [])
  array.map do |char|
    if char.is_a?(Integer)
      char.chr
    else
      char
    end
  end
end

def caesar_cipher(string, shift_factor)
  unless shift_factor > 0
    puts "Error"
    return
  end

  unless string.length != 0
    puts "Error"
    return
  end

  string_array = string.split("")

  ascii_array = string_array.map do |char|
    if char =~ /[A-Za-z]/
      char.ord
    else
      char
    end
  end

  puts ascii_array

  shifted_ascii_array = shift_ascii_array(ascii_array, shift_factor)

  puts shifted_ascii_array

  back_to_char_string = translate_to_char(shifted_ascii_array).join

  puts back_to_char_string
end



caesar_cipher("I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best.", 2)
