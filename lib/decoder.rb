require_relative 'converter'

class Decoder < Converter

    def convert(numeral)
        numeral_copy = numeral.upcase.clone
        result = 0
        @@CONVERSIONS.each { |integer, letter|
            while numeral_copy.start_with?(letter)
                result += integer
                numeral_copy.sub!(letter, "")
            end
        }
        return result
    end
end