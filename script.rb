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

  puts string_array
end



caesar_cipher("Test", 2)
