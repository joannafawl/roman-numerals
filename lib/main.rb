require_relative 'display'
require_relative 'encoder'
require_relative 'decoder'

class Main
    attr_reader :display, :encoder, :decoder

    def initialize(display, encoder, decoder)
        @display = display
        @encoder = encoder
        @decoder = decoder
    end

    def run
        @display.welcome_message
        @display.menu
        user_input = STDIN.gets.to_s.chomp
        menu_choice(user_input)
    end

    def menu_choice(input)
        case input
        when "1" then @display.info
        when "2" then run_encoder
        when "3" then run_decoder
        when "quit" then @display.goodbye_message
        end
    end

    def run_encoder
        @display.request_number
        user_input = STDIN.gets.to_s.chomp
        result = @encoder.convert(user_input)
        @display.encoder_result_message(user_input, result)
    end

    def run_decoder
        @display.request_numeral
        user_input = STDIN.gets.to_s.chomp
        result = @decoder.convert(user_input)
        @display.decoder_result_message(user_input, result)
    end
end