require_relative '../lib/display'
require_relative '../lib/converter'

describe Display do
    context "#welcome_message" do
        it "displays a welcome message" do
            display = Display.new
            expect { display.welcome_message }.to output("Welcome to the Roman Numeral Converter!\n").to_stdout
        end
    end

    context "#menu" do
        it "displays a menu" do
            display = Display.new
            menu = "\nWhat would you like to do?\n\n"\
            "\t1) Learn more about Roman numerals\n"\
            "\t2) Convert a number to Roman numerals\n"\
            "\t3) Convert a Roman numeral to numbers\n\n"\
            "Please enter an option from 1-3, or press q to quit: "

            expect { display.menu }.to output(menu).to_stdout
        end
    end

    context "#info" do
        it "displays some info on Roman numerals" do
            display = Display.new
            
            info_string = "\nAccording to Wikipedia, Roman numerals are a numeral system that originated in ancient Rome. " +
            "They were the main way of writing numbers until the Late Middle Ages, when they were replaced by Arabic numerals.\n\n" +
            "Numbers are represented by combinations of letters from the Latin alphabet. " +
            "For example, 11 is written as 'XI', meaning 'ten plus one', whereas 4 is written as 'IV', meaning 'one less than five'. " +
            "The largest number that can be written this way is 3999.\n\n" +
            "The current year, 2020, is written 'MMXX' in Roman numerals.\n\n" +
            "Here is a handy chart of each Roman numeral and its value:\n\n"

            expect { display.info }.to output(a_string_including(info_string)).to_stdout
        end
    end

    context "#request_number" do
        it "displays a message for user to enter a number to convert" do
            display = Display.new
            message = "\nPlease enter a number between 1 and 3999 to convert: "

            expect { display.request_number }.to output(message).to_stdout
        end
    end

    context "#encoder_result_message" do
        it "displays the converted Roman numeral" do
            display = Display.new
            message = "1 converted to Roman numerals is I.\n"

            expect { display.encoder_result_message(1, "I") }.to output(message).to_stdout
        end
    end

    context "#request_numeral" do
        it "displays a message for user to enter a numeral to convert" do
            display = Display.new
            message = "\nPlease enter a numeral to convert: "

            expect { display.request_numeral }.to output(message).to_stdout
        end
    end

    context "#decoder_result_message" do
        it "displays the converted number" do
            display = Display.new
            message = "I converted to Roman numerals is 1.\n"

            expect { display.decoder_result_message("I", 1) }.to output(message).to_stdout
        end
    end

    context "#goodbye_message" do
        it "displays a goodbye message" do
            display = Display.new
            message = "Thank you for using the Roman Numeral Converter! We hope you learnt something new!"

            expect { display.goodbye_message }.to output(message).to_stdout
        end
    end

    context "When the user enters the wrong menu choice" do
        it "displays an invalid choice message" do
            display = Display.new
            message = "Invalid menu choice. Please enter a number from 1-5.\n\n"

            expect { display.invalid_menu_choice_message }.to output(message).to_stdout
        end
    end

    context "When the user enters a number to convert that is too big" do
        it "displays an invalid number message" do
            display = Display.new
            message = "Please ensure number is between 1 and 3999.\n"

            expect { display.invalid_number_message }.to output(message).to_stdout
        end
    end

    context "When the user enters an invalid Roman numeral to convert" do
        it "displays an invalid number message" do
            display = Display.new
            message = "Invalid Roman numeral. Try again.\n"

            expect { display.invalid_numeral_message }.to output(message).to_stdout
        end
    end
end