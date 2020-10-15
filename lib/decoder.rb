class Decoder

    CONVERTER = {
        1000 => "M",
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I"
    }

    def convert(number)
        result = ""
        CONVERTER.each { |integer, numeral|
            quotient, remainder = number.divmod(integer)
            result << CONVERTER[integer] * quotient
            number = remainder
        }
        return result
    end 
end