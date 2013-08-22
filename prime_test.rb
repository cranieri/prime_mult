#!/usr/bin/env ruby
$LOAD_PATH << File.join(File.dirname(__FILE__), '', 'lib')
require 'prime_builder'
require 'prime_table.rb'

num_of_prime_numbers = ARGV[0] ?  ARGV[0].to_i : 10
p "Built a multiplied table for #{num_of_prime_numbers} prime numbers"

pn = PrimeBuilder.new(num_of_prime_numbers)
pn.create_prime_numbers
pt = PrimeTable.new(pn.prime_numbers)
pt.print_mult_table
