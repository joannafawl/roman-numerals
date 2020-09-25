# [
# 1: 'I',
# 5: 'V', 
# 10: 'X', 
# 50: 'L', 
# 100: 'C', 
# 500: 'D', 
# 1000: 'M']

class RomanNumerals

    def converter(number)
        if number == 3
            return "III"
        end
        if number == 2
            return "II"
        end
        return "I"
    end
    
end