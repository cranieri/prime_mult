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

  def print_mult_table_2
    to_console = ''
    to_console += '     '
    @prime_numbers.each {|i| to_console += "%-3d  " % i}
    to_console += "\n     "
    @prime_numbers.each {|i| to_console += '---- '}
    to_console += "\n"

    @prime_numbers.each do |j|
      to_console += "%-3d| " % j
      @prime_numbers.each {|i| to_console += "%-3d  " % (i*j)}
      to_console += "\n"
    end
    to_console
  end
end