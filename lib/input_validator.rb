require_relative 'encoder'

class InputValidator

    def valid_number?(num)
        num = num.to_i
        if num < 1 or num > 3999
            return false
        end
        true
    end

    def valid_numeral?(numeral, result)
        if Encoder.new.convert(result) == numeral
            return true
        else
            return false
        end
    end
end