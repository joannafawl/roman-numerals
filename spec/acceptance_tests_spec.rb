require_relative '../lib/main'

describe "RomanNumerals" do
    context "When the user starts the program" do
        xit "displays a welcome message" do
            main = Main.new
            message = "Welcome to the Roman Numeral Converter!\n"

            expect { main.run }.to output(a_string_including(message)).to_stdout
        end
    end

    context "When the app is run" do
        xit "displays a menu" do
            main = Main.new
            menu = "What would you like to do?\n\n"\
            "\t1) Learn more about Roman numerals\n"\
            "\t2) Use the converter\n"\
            "\t3) Practice conversion skills\n"\
            "\t4) Take the test\n"\
            "\t5) Quit\n\n"\
            "Please enter an option from 1-5.\n"

            expect { main.run }.to output(a_string_including(menu)).to_stdout
        end
    end

    context "When the user asks to learn more about Roman numerals" do
        it "displays an information section" do
            main = Main.new
            info = "According to Wikipedia, Roman numerals are a numeral system that originated in ancient Rome.\n"

            allow(STDIN).to receive(:gets).and_return("1")
            main.run

            expect { main.run }.to output(a_string_including(info)).to_stdout
        end
    end
end