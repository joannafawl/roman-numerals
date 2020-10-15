require_relative '../lib/display'

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
            menu = "What would you like to do?\n\n"\
            "\t1) Learn more about Roman numerals\n"\
            "\t2) Convert a number to Roman numerals\n"\
            "\t3) Convert a Roman numeral to numbers\n\n"\
            "Please enter an option from 1-3.\n"

            expect { display.menu }.to output(menu).to_stdout
        end
    end

    context "#info" do
        it "displays some info on Roman numerals" do
            display = Display.new
            info_string = "\nAccording to Wikipedia, Roman numerals are a numeral system that originated in ancient Rome.\n"

            expect { display.info }.to output(info_string).to_stdout
        end
    end

    context "#request_number" do
        it "displays a message for user to enter a number to convert" do
            display = Display.new
            message = "\nPlease enter a number between 1 and 3999 to convert.\n"

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
end