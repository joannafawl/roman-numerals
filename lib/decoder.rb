require_relative 'converter'

class Decoder < Converter

    def convert(numeral)
        result = 0
        @@CONVERSIONS.each { |integer, letter|
            while numeral.start_with?(letter)
                result += integer
                numeral.sub!(letter, "")
            end
        }
        return result
    end
end