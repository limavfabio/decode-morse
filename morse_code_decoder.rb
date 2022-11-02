MORSE_HASH = {
  '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f',
  '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l',
  '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r',
  '...' => 's', '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w',
  '-..-' => 'x', '-.--' => 'y', '--..' => 'z', '   ' => ' '
}.freeze

def morse_char_decoder(input)
  MORSE_HASH[input].upcase
end

def morse_word_decoder(input)
  output = ''
  input.split.each { |word| output += morse_char_decoder(word) }
  output
end

def morse_sentence_decoder(input)
  output = ''
  input.split('   ').each { |sentence| output += "#{morse_word_decoder(sentence)} " }
  output
end

# Puts cypher text
puts(morse_sentence_decoder('-- -.--   -. .- -- .'))
puts(morse_sentence_decoder('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
