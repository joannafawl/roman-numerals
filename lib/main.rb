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
        user_input = STDIN.gets.chomp
        menu_choice(user_input)
    end

    private

    def menu_choice(input)
        case input
        when "1" then @display.info
        end
    end
end