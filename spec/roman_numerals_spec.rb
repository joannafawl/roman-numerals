require_relative '../lib/roman_numerals'

describe RomanNumerals do
    context "For simple numbers" do
        it "returns I when input is the number 1" do
            expect(described_class.new.converter(1)).to eq("I")
        end

        it "return II when input is the number 2" do
            expect(described_class.new.converter(2)).to eq("II")
        end

        it "returns III when input is the number 3" do
            expect(described_class.new.converter(3)).to eq("III")
        end

        it "returns V when input is the number 5" do
            expect(described_class.new.converter(5)).to eq("V")
        end

        it "returns X when input is the number 10" do
            expect(described_class.new.converter(10)).to eq("X")
        end 
    end

    context "For more complex numbers" do
        it "returns VI when input is the number 6" do
            expect(described_class.new.converter(6)).to eq("VI")
        end

        it "returns VI when input is the number 6" do
            expect(described_class.new.converter(7)).to eq("VII")
        end

        it "returns VI when input is the number 6" do
            expect(described_class.new.converter(17)).to eq("XVII")
        end
    end

    context "For large numbers" do
        it "returns XX when input is the number 20" do
            expect(described_class.new.converter(20)).to eq("XX")
        end

        it "returns L when input is the number 50" do
            expect(described_class.new.converter(50)).to eq("L")
        end

        it "returns C when input is the number 100" do
            expect(described_class.new.converter(100)).to eq("C")
        end

        it "returns D when input is the number 500" do
            expect(described_class.new.converter(500)).to eq("D")
        end

        it "returns M when input is the number 1000" do
            expect(described_class.new.converter(1000)).to eq("M")
        end
    end
end