require_relative '../lib/decoder'

describe Decoder do
    context "For simple numbers" do
        it "returns I when input is the number 1" do
            expect(described_class.new.convert(1)).to eq("I")
        end

        it "return II when input is the number 2" do
            expect(described_class.new.convert(2)).to eq("II")
        end

        it "returns III when input is the number 3" do
            expect(described_class.new.convert(3)).to eq("III")
        end

        it "returns V when input is the number 5" do
            expect(described_class.new.convert(5)).to eq("V")
        end

        it "returns X when input is the number 10" do
            expect(described_class.new.convert(10)).to eq("X")
        end 
    end

    context "For more complex numbers" do
        it "returns VI when input is the number 6" do
            expect(described_class.new.convert(6)).to eq("VI")
        end

        it "returns VI when input is the number 6" do
            expect(described_class.new.convert(7)).to eq("VII")
        end

        it "returns VI when input is the number 6" do
            expect(described_class.new.convert(17)).to eq("XVII")
        end
    end

    context "For large numbers" do
        it "returns XX when input is the number 20" do
            expect(described_class.new.convert(20)).to eq("XX")
        end

        it "returns L when input is the number 50" do
            expect(described_class.new.convert(50)).to eq("L")
        end

        it "returns C when input is the number 100" do
            expect(described_class.new.convert(100)).to eq("C")
        end

        it "returns D when input is the number 500" do
            expect(described_class.new.convert(500)).to eq("D")
        end

        it "returns M when input is the number 1000" do
            expect(described_class.new.convert(1000)).to eq("M")
        end
    end

    context "Edge cases" do
        it "returns IV when input is the number 4" do
            expect(described_class.new.convert(4)).to eq("IV")
        end

        it "returns IX when input is the number 9" do
            expect(described_class.new.convert(9)).to eq("IX")
        end

        it "returns XL when input is the number 40" do
            expect(described_class.new.convert(40)).to eq("XL")
        end

        it "returns XC when input is the number 90" do
            expect(described_class.new.convert(90)).to eq("XC")
        end

        it "returns CD when input is the number 400" do
            expect(described_class.new.convert(400)).to eq("CD")
        end

        it "returns CM when input is the number 900" do
            expect(described_class.new.convert(900)).to eq("CM")
        end        
    end
end