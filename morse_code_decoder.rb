MORSE_HASH = {
  '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f',
  '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l',
  '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r',
  '...' => 's', '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w',
  '-..-' => 'x', '-.--' => 'y', '--..' => 'z', '   ' => ' '
}.freeze

def morse_char_decoder(_input)
  MORSE_HASH[_input].upcase
end

def morse_word_decoder(_input)
  _output = ''
  _input.split.each { |word| _output += morse_char_decoder(word)}
  _output
end

def morse_sentence_decoder(_input)
  _output = ''
  _input.split('   ').each { |sentence|  _output += "#{morse_word_decoder(sentence)} "}
  _output
end

# Puts cypher text
puts(morse_sentence_decoder('-- -.--   -. .- -- .'))
puts(morse_sentence_decoder('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
