require_relative '../lib/decoder'

describe Decoder do
    context "For simple numerals" do
        it "returns 1 when the input is I" do
            expect(described_class.new.convert("I")).to eq(1)
        end

        it "returns 2 when the input is II" do
            expect(described_class.new.convert("II")).to eq(2)
        end

        it "returns 3 when the input is III" do
            expect(described_class.new.convert("III")).to eq(3)
        end

        it "returns 5 when the input is V" do
            expect(described_class.new.convert("V")).to eq(5)
        end

        it "returns 10 when the input is X" do
            expect(described_class.new.convert("X")).to eq(10)
        end
    end

    context "For more complex numerals" do
        it "returns 17 when the input is XVII" do
            expect(described_class.new.convert("XVII")).to eq(17)
        end

        it "returns 24 when the input is XXIV" do
            expect(described_class.new.convert("XXIV")).to eq(24)
        end

        it "returns 76 when the input is LXXVI" do
            expect(described_class.new.convert("LXXVI")).to eq(76)
        end

        it "returns 371 when the input is CCCLXXI" do
            expect(described_class.new.convert("CCCLXXI")).to eq(371)
        end

        it "returns 1689 when the input is MDXXXIX" do
            expect(described_class.new.convert("MDCLXXXIX")).to eq(1689)
        end
    end

    context "When the numeral is in lowercase" do
        it "converts to uppercase before converting" do
            expect(described_class.new.convert("xx")).to eq(20)
        end
    end
end