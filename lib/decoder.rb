require_relative 'converter'

class Decoder < Converter

    def convert(numeral)
        result = 0
        chars = numeral.split("")
        chars.each { |char| 
            if char == "X"
                result += 10
            elsif char == "V"
                result += 5
            elsif char == "I"
                result += 1
            end
        }
        return result
    end
end