class Display
    def welcome_message
        puts "Welcome to the Roman Numeral Converter!"
    end

    def menu
        puts "What would you like to do?\n\n"
        puts "\t1) Learn more about Roman numerals\n"
        puts "\t2) Convert a number to Roman numerals\n"
        puts "\t3) Convert a Roman numeral to numbers\n\n"
        puts "Please enter an option from 1-3.\n"
    end

    def info
        puts "\nAccording to Wikipedia, Roman numerals are a numeral system that originated in ancient Rome."
    end
end