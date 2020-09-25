require_relative '../roman_numerals'

describe RomanNumerals do
    context "Converter" do
        it "returns I when input is the number 1" do
            expect(described_class.new.converter(1)).to eq("I")
        end

        it "return II when input is the number 2" do
            expect(described_class.new.converter(2)).to eq("II")
        end

        it "returns III when input is the number 3" do
            expect(described_class.new.converter(3)).to eq("III")
        end
    end
end