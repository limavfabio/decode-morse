def morse_code_decoder(cypher_string)
  morse_hash = {
    '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f',
    '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l',
    '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r',
    '...' => 's', '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w',
    '-..-' => 'x', '-.--' => 'y', '--..' => 'z', '   ' => ' '
  }

  # decode cypher text
  cypher_array = cypher_string.split(/\s/).map { |i| morse_hash[i] }
  text = ''
  cypher_array.each do |t|
    text += (t || ' ')
  end
  text.split.join(' ').upcase
end

# Puts cypher text
puts(morse_code_decoder('-- -.--   -. .- -- .'))
puts(morse_code_decoder('.-   -... --- -..-   ..-. ..- .-.. .-..          --- ..-.   .-. ..- -... .. . ...'))
