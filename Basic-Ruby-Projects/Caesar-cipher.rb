def caesar_cipher(string, shift)
  shift = shift % 26
  result = ""
  i = 0

  while i < string.length
    char = string[i]

    if char >= 'A' && char <= 'Z'
      base = 'A'.ord
      result << ((char.ord - base + shift) % 26 + base).chr

    elsif char >= 'a' && char <= 'z'
      base = 'a'.ord
      result << ((char.ord - base + shift) % 26 + base).chr

    else
      result << char
    end

    i += 1
  end

  result
end

# THIS RUNS THE METHOD
puts caesar_cipher("What a string!", 5)
