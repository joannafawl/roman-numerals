require_relative 'converter'

class Decoder < Converter

    def convert(numeral)
        result = 0
        chars = numeral.split("")
        chars.each { |char| 
            if char == "I"
                result += 1
            end
        }
        return result
    end
end