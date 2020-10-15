class RomanNumerals

    CONVERTER = {
        1000 => "M",
        500 => "D",
        100 => "C",
        50 => "L",
        20 => "XX",
        10 => "X",
        5 => "V",
        1 => "I"
    }

    def converter(number)
        if CONVERTER.key?(number)
            return CONVERTER[number]
        else
            result = ""
            CONVERTER.each { |integer, numeral|
                quotient, remainder = number.divmod(integer)
                result << CONVERTER[integer] * quotient
                number = remainder
            }
        end
        return result
    end 
end