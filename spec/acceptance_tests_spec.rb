require_relative '../lib/main'

describe "RomanNumerals" do
    context "When the user starts the program" do
        it "displays a welcome message" do
            display = Display.new
            encoder = Encoder.new
            decoder = Decoder.new
            main = Main.new(display, encoder, decoder)
            message = "Welcome to the Roman Numeral Converter!\n"

            allow(STDIN).to receive(:gets).and_return("")
            main.run

            expect { main.run }.to output(a_string_including(message)).to_stdout
        end
    end

    context "When the app is run" do
        it "displays a menu" do
            display = Display.new
            encoder = Encoder.new
            decoder = Decoder.new
            main = Main.new(display, encoder, decoder)            
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
            display = Display.new
            encoder = Encoder.new
            decoder = Decoder.new
            main = Main.new(display, encoder, decoder)
            info = "\nAccording to Wikipedia, Roman numerals are a numeral system that originated in ancient Rome."

            allow(STDIN).to receive(:gets).and_return("1")

            expect { main.run }.to output(a_string_including(info)).to_stdout
        end
    end

    context "When the user asks to convert a number to a Roman numeral" do
        it "displays the converted number" do
            display = Display.new
            encoder = Encoder.new
            decoder = Decoder.new
            main = Main.new(display, encoder, decoder)
            result = "1 converted to Roman numerals is I."

            allow(STDIN).to receive(:gets).and_return("2", 1)

            expect { main.run }.to output(a_string_including(result)).to_stdout
        end

        it "displays the converted number" do
            display = Display.new
            encoder = Encoder.new
            decoder = Decoder.new
            main = Main.new(display, encoder, decoder)
            result = "1370 converted to Roman numerals is MCCCLXX."

            allow(STDIN).to receive(:gets).and_return("2", 1370)

            expect { main.run }.to output(a_string_including(result)).to_stdout
        end

        it "displays the converted number" do
            display = Display.new
            encoder = Encoder.new
            decoder = Decoder.new
            main = Main.new(display, encoder, decoder)            
            result = "493 converted to Roman numerals is CDXCIII."

            allow(STDIN).to receive(:gets).and_return("2", 493)

            expect { main.run }.to output(a_string_including(result)).to_stdout
        end
    end

    context "When the user asks to convert a Roman numeral to a number" do
        it "displays the converted numeral" do
            display = Display.new
            encoder = Encoder.new
            decoder = Decoder.new
            main = Main.new(display, encoder, decoder)            
            result = "I converted to Roman numerals is 1."

            allow(STDIN).to receive(:gets).and_return("3", "I")

            expect { main.run }.to output(a_string_including(result)).to_stdout
        end

        it "displays the converted numeral" do
            display = Display.new
            encoder = Encoder.new
            decoder = Decoder.new
            main = Main.new(display, encoder, decoder)
            result = "MDXLVI converted to Roman numerals is 1546."

            allow(STDIN).to receive(:gets).and_return("3", "MDXLVI")

            expect { main.run }.to output(a_string_including(result)).to_stdout
        end

        it "displays the converted numeral" do
            display = Display.new
            encoder = Encoder.new
            decoder = Decoder.new
            main = Main.new(display, encoder, decoder)
            result = "DCLXVI converted to Roman numerals is 666."

            allow(STDIN).to receive(:gets).and_return("3", "DCLXVI")

            expect { main.run }.to output(a_string_including(result)).to_stdout
        end
    end

    context "When the user wants to quit" do
        it "displays a goodbye message" do
            display = Display.new
            encoder = Encoder.new
            decoder = Decoder.new
            main = Main.new(display, encoder, decoder)
            message = "Thank you for using the Roman Numeral Converter! We hope you learnt something new!"
            allow(STDIN).to receive(:gets).and_return("quit")

            expect { main.run }.to output(a_string_including(message)).to_stdout
        end
    end
end