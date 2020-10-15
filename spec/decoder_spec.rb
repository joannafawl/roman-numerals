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
end