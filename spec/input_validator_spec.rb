describe InputValidator do
    context "When number is too large" do
        it "#valid_number? method returns false" do
            input_validator = InputValidator.new

            expect(input_validator.valid_number?(6001)).to eq(false)
        end
    end

    context "When number is too small" do
        it "#valid_number? method returns false" do
            input_validator = InputValidator.new

            expect(input_validator.valid_number?(0)).to eq(false)
        end
    end
end