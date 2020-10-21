require_relative 'lib/main'
require_relative 'lib/display'
require_relative 'lib/encoder'
require_relative 'lib/decoder'

display = Display.new
encoder = Encoder.new
decoder = Decoder.new
main = Main.new(display, encoder, decoder)

main.run