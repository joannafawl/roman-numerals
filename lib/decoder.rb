require_relative 'converter'

class Decoder < Converter
    
    def convert(numeral)
        if numeral == "I"
            return 1
        elsif numeral == "II"
            return 2
        else
            return 3
        end
    end
end