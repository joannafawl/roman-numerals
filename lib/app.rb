require_relative 'display'
require_relative 'encoder'
require_relative 'decoder'

class App
    attr_reader :display, :encoder, :decoder

    def initialize
        @display = Display.new
        @encoder = Encoder.new
        @decoder = Decoder.new
    end
end