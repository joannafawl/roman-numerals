require_relative '../lib/roman_numerals'

describe RomanNumerals do
    context "When converting simple numbers" do
        it "returns I when input is the number 1" do
            expect(described_class.new.converter(1)).to eq("I")
        end

        it "return II when input is the number 2" do
            expect(described_class.new.converter(2)).to eq("II")
        end

        it "returns III when input is the number 3" do
            expect(described_class.new.converter(3)).to eq("III")
        end

        it 'returns V when input is the number 5' do
            expect(described_class.new.converter(5)).to eq('V')
        end

        it 'returns X when input is the number 10' do
            expect(described_class.new.converter(10)).to eq('X')
        end 

        it 'returns XX when input is the number 20' do
            expect(described_class.new.converter(20)).to eq('XX')
        end
    end
end