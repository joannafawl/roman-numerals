require_relative 'display'
require_relative 'encoder'
require_relative 'decoder'

class Main
    attr_reader :display, :encoder, :decoder

    def initialize
        @display = Display.new
        @encoder = Encoder.new
        @decoder = Decoder.new
    end

    def run
        @display.welcome_message
        @display.menu
    end
end