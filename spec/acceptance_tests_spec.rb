require_relative '../lib/main'

describe "RomanNumerals" do
    context "When the user starts the program" do
        it "displays a welcome message" do
            main = Main.new
            message = "Welcome to the Roman Numeral Converter!\n"
            allow(STDIN).to receive(:gets).and_return("")
            main.run

            expect { main.run }.to output(a_string_including(message)).to_stdout
        end
    end

    context "When the app is run" do
        it "displays a menu" do
            main = Main.new
            menu = "What would you like to do?\n\n"\
            "\t1) Learn more about Roman numerals\n"\
            "\t2) Convert a number to Roman numerals\n"\
            "\t3) Convert a Roman numeral to numbers\n\n"\
            "Please enter an option from 1-3: "

            allow(STDIN).to receive(:gets).and_return("")
            main.run

            expect { main.run }.to output(a_string_including(menu)).to_stdout
        end
    end

    context "When the user asks to learn more about Roman numerals" do
        it "displays an information section" do
            main = Main.new
            info = "\nAccording to Wikipedia, Roman numerals are a numeral system that originated in ancient Rome.\n"

            allow(STDIN).to receive(:gets).and_return("1")
            main.run

            expect { main.run }.to output(a_string_including(info)).to_stdout
        end
    end

    context "When the user asks to convert a number to a Roman numeral" do
        it "displays the converted number" do
            main = Main.new
            result = "1 converted to Roman numerals is I."

            allow(STDIN).to receive(:gets).and_return("2", 1)
            main.run

            expect { main.run_encoder }.to output(a_string_including(result)).to_stdout
        end

        it "displays the converted number" do
            main = Main.new
            result = "1370 converted to Roman numerals is MCCCLXX."

            allow(STDIN).to receive(:gets).and_return("2", 1370)
            main.run

            expect { main.run_encoder }.to output(a_string_including(result)).to_stdout
        end

        it "displays the converted number" do
            main = Main.new
            result = "493 converted to Roman numerals is CDXCIII."

            allow(STDIN).to receive(:gets).and_return("2", 493)
            main.run

            expect { main.run_encoder }.to output(a_string_including(result)).to_stdout
        end
    end

    context "When the user asks to convert a Roman numeral to a number" do
        it "displays the converted numeral" do
            main = Main.new
            result = "I converted to Roman numerals is 1."

            allow(STDIN).to receive(:gets).and_return("3", "I")
            main.run

            expect { main.run_decoder }.to output(a_string_including(result)).to_stdout
        end

        it "displays the converted numeral" do
            main = Main.new
            result = "MDXLVI converted to Roman numerals is 1546."

            allow(STDIN).to receive(:gets).and_return("3", "MDXLVI")
            main.run

            expect { main.run_decoder }.to output(a_string_including(result)).to_stdout
        end

        it "displays the converted numeral" do
            main = Main.new
            result = "DCLXVI converted to Roman numerals is 666."

            allow(STDIN).to receive(:gets).and_return("3", "DCLXVI")
            main.run

            expect { main.run_decoder }.to output(a_string_including(result)).to_stdout
        end
    end

    context "When the user wants to quit" do
        it "displays a goodbye message" do
            main = Main.new
            message = "Thank you for using the Roman Numeral Converter! We hope you learnt something new!"
            allow(STDIN).to receive(:gets).and_return("quit")
            main.run

            expect { main.run }.to output(a_string_including(message)).to_stdout
        end
    end
end