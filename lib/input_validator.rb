class InputValidator

    def valid_number?(num)
        num = num.to_i
        if num < 1 or num > 3999
            return false
        end
        true
    end
end