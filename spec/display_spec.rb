describe Display do
    context "#welcome_message" do
        it "displays a welcome message" do
            display = Display.new
            expect { display.welcome_message }.to output("Welcome to the Roman Numeral Converter!\n").to_stdout
        end
    end
end