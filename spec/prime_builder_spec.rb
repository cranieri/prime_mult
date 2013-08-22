require 'spec_helper'


describe PrimeBuilder do
  let(:pb) { PrimeBuilder.new(10) }
  describe ".new" do
    context "the integer 10 is passed as parameter" do
      pb =  PrimeBuilder.new(10)
      it "assigns 10 to the instance variable num_of_prime_numbers" do
        expect(pb.num_of_prime_numbers).to eq 10
      end

      it "initialize the prime_numbers array to []" do
        expect(pb.prime_numbers).to eq []
      end
    end

    context "the value passed is not an number" do
      it "raises an error" do
        expect { PrimeBuilder.new('invalid') }.to raise_error
      end
    end

    context "the value passed is a number but not integer" do
      it "raises an error" do
        expect { PrimeBuilder.new(3.4) }.to raise_error
      end
    end
  end

  describe "#create_prime_numbers" do
    context "the number of prime numbers to print is 10" do
      before do
        pb.create_prime_numbers
      end

      it "populates the prime_numbers instance variable with the 10 prime numbers" do
         expect(pb.prime_numbers.size).to eq 10
      end

      it "populates prime_numbers array with [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]" do
        expect(pb.prime_numbers).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      end
    end
  end

  describe "#prime_numbers" do
    context "the number of prime numbers to be printed is 10" do
      it "returns an array of 10 prime numbers" do
        pb.create_prime_numbers
        expect(pb.prime_numbers).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      end
    end
  end

  describe "#prime_numbers=" do
    it "assigns a new array of prime numbers" do
      pb.prime_numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      expect(pb.prime_numbers).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end
  end


  describe "#num_of_prime_numbers" do
    it "returns number to be printed" do
        expect(pb.num_of_prime_numbers).to eq 10
    end
  end

  describe "#num_of_prime_numbers=" do
    it "asigns the number to be prime numbers to be printed" do
      pb.num_of_prime_numbers = 20
      expect(pb.num_of_prime_numbers).to eq 20
    end
  end

end

