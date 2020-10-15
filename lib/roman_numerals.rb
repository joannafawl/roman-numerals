# [
# 1: 'I',
# 5: 'V', 
# 10: 'X', 
# 50: 'L', 
# 100: 'C', 
# 500: 'D', 
# 1000: 'M']

class RomanNumerals

    CONVERTER = {
        5 => "V",
        10 => "X",
        20 => "XX"
    }

    def converter(number)
        if CONVERTER.key?(number)
            return CONVERTER[number]
        else
            result = ""
            for n in 1..number
                result << "I"
            end
        return result
        end
    end 
end