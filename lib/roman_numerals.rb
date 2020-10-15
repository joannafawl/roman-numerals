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
        20 => "XX",
        10 => "X",
        6 => "VI",
        5 => "V",
        3 => "III",
        2 => "II",
        1 => "I"
    }

    def converter(number)
        if CONVERTER.key?(number)
            return CONVERTER[number]
        end
    end 
end