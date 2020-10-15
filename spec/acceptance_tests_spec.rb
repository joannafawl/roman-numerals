require_relative '../lib/app'

describe "RomanNumerals" do
    context "When the user starts the program" do
        it "displays a welcome message" do
            app = App.new
            message = "Welcome to the Roman Numeral Converter!\n"

            expect { app.run }.to output(a_string_including(message)).to_stdout
        end
    end

    context "When the app is run" do
        it "displays a menu" do
            app = App.new
            menu = "What would you like to do?\n\n"\
            "\t1) Learn more about Roman numerals\n"\
            "\t2) Use the converter\n"\
            "\t3) Practice conversion skills\n"\
            "\t4) Take the test\n"\
            "\t5) Quit\n\n"\
            "Please enter an option from 1-5.\n"

            expect { app.run }.to output(a_string_including(menu)).to_stdout
        end
    end
end