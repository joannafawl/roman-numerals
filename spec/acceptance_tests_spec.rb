require_relative '../lib/app'

describe "RomanNumerals" do
    context "When the user starts the programme" do
        it "displays a welcome message" do
            app = App.new
            message = "Welcome to the Roman Numeral Converter!\n"

            expect { app.run }.to output(a_string_including(message)).to_stdout
        end
    end
end