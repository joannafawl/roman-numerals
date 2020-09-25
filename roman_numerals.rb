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
        result = ""
        for n in 1..number
            result << "I"
        end
        return result
    end
    
end