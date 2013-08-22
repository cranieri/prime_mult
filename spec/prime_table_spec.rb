require 'spec_helper'
require 'stringio'

def capture_stdout
  old_stdout = $stdout
  fake_stdout = StringIO.new
  $stdout = fake_stdout
  yield
  fake_stdout.string
ensure
  $stdout = old_stdout
end

def pn_array
  [2, 3, 5]
end

describe PrimeTable do
  let(:prime_table) { PrimeTable.new(pn_array) }
  describe ".new" do
    context "the array #{pn_array} is passed as parameter" do
      it "assigns the array #{pn_array} to the attribute prime_numbers" do
        expect(prime_table.prime_numbers).to eq pn_array
      end
    end
  end


  describe "#print_mult_table" do
   it "creates a multiplication table with the prime numbers contained into #{pn_array} array" do
     table_to_be_printed = "     2    3    5    \n     ---- ---- ---- \n2  | 4    6    10   \n3  | 6    9    15   \n5  | 10   15   25   \n"
     table_printed = capture_stdout do
       prime_table.print_mult_table # do your actual method call
     end
     expect(table_printed).to eq table_to_be_printed
   end
  end
end

