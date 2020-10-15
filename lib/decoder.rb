require_relative 'converter'

class Decoder < Converter

    def convert(number)
        result = ""
        @@CONVERSIONS.each { |integer, numeral|
            quotient, remainder = number.divmod(integer)
            result << @@CONVERSIONS[integer] * quotient
            number = remainder
        }
        return result
    end 
end