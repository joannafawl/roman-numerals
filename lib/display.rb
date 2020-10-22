require_relative 'converter'

class Display
    def welcome_message
        puts "Welcome to the Roman Numeral Converter!"
    end

    def menu
        puts "What would you like to do?\n\n"
        puts "\t1) Learn more about Roman numerals\n"
        puts "\t2) Convert a number to Roman numerals\n"
        puts "\t3) Convert a Roman numeral to numbers\n\n"
        print "Please enter an option from 1-3: "
    end

    def info
        info_string = "\nAccording to Wikipedia, Roman numerals are a numeral system that originated in ancient Rome. " +
            "They were the main way of writing numbers until the Late Middle Ages, when they were replaced by Arabic numerals.\n\n" +
            "Numbers are represented by combinations of letters from the Latin alphabet. " +
            "For example, 11 is written as 'XI', meaning 'ten plus one', whereas 4 is written as 'IV', meaning 'one less than five'. " +
            "The largest number that can be written this way is 3999.\n\n" +
            "The current year, 2020, is written 'MMXX' in Roman numerals.\n\n" +
            "Here is a handy chart of each Roman numeral and its value:\n\n"

        puts info_string
        Converter.class_variable_get(:@@CONVERSIONS).each { |key, value|
            puts "\t#{value}: #{key}"
        } 
        #puts "\nAccording to Wikipedia, Roman numerals are a numeral system that originated in ancient Rome."
    end

    def request_number
        print "\nPlease enter a number between 1 and 3999 to convert: "
    end

    def encoder_result_message(integer, result)
        puts "#{integer} converted to Roman numerals is #{result}."
    end

    def request_numeral
        print "\nPlease enter a numeral to convert: "
    end

    def decoder_result_message(numeral, result)
        puts "#{numeral} converted to Roman numerals is #{result}."
    end

    def goodbye_message
        print "Thank you for using the Roman Numeral Converter! We hope you learnt something new!"
    end

    def invalid_menu_choice_message 
        puts "Invalid menu choice. Please enter a number from 1-5.\n"
    end
end