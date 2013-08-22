class PrimeTable
  attr_accessor :prime_numbers

  def initialize(prime_numbers)
    @prime_numbers = prime_numbers
  end

  def print_mult_table
    print '     '
    @prime_numbers.each {|i| print "%-3d  " % i}
    print "\n     "
    @prime_numbers.each {|i| print '---- '}
    print "\n"

    @prime_numbers.each do |j|
      print "%-3d| " % j
      @prime_numbers.each {|i| print "%-3d  " % (i*j)}
      print "\n"
    end
  end
end