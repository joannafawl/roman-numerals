require_relative 'input_validator'

class Main
    attr_reader :display, :encoder, :decoder

    def initialize(display, encoder, decoder)
        @display = display
        @encoder = encoder
        @decoder = decoder
        @input_validator = InputValidator.new
        @running = false
    end

    def run
        @running = true
        @display.welcome_message
        until @running == false
            @display.menu
            user_input = STDIN.gets.to_s.chomp
            menu_choice(user_input)
        end
    end

    private 

    def menu_choice(input)
        case input
        when "1" then @display.info
        when "2" then run_encoder
        when "3" then run_decoder
        when "quit", "q", "exit"
            @display.goodbye_message
            @running = false
        else
            @display.invalid_menu_choice_message
        end
    end

    def run_encoder
        @display.request_number
        user_input = STDIN.gets.to_s.chomp
        if @input_validator.valid_number?(user_input)
            result = @encoder.convert(user_input)
            @display.encoder_result_message(user_input, result)
        else
            @display.invalid_number_message
        end
    end

    def run_decoder
        @display.request_numeral
        user_input = STDIN.gets.to_s.upcase.chomp
        result = @decoder.convert(user_input)
        if @input_validator.valid_numeral?(user_input, result)
            @display.decoder_result_message(user_input, result)
        else
            @display.invalid_numeral_message
        end
    end
end