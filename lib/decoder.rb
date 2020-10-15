require_relative 'converter'

class Decoder < Converter

    def convert(numeral)
        result = 0
        chars = numeral.split("")
        chars.each { |char|
            @@CONVERSIONS.each { |integer, numeral|
                if char == numeral
                    result += integer
                end
            }
        }
        return result
    end
end