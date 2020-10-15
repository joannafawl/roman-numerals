require_relative 'converter'

class Encoder < Converter

    def convert(number)
        result = ""
        number = number.to_i
        @@CONVERSIONS.each { |integer, numeral|
            quotient, remainder = number.divmod(integer)
            result << @@CONVERSIONS[integer] * quotient
            number = remainder
        }
        return result
    end 

end