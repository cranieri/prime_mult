class PrimeBuilder
  attr_accessor :prime_numbers, :num_of_prime_numbers

  def initialize(num_of_prime_numbers = 10)
    validate_param(num_of_prime_numbers)
    @num_of_prime_numbers = num_of_prime_numbers
    @prime_numbers = []
  end

  def create_prime_numbers
    i = 2
    while @prime_numbers.size < @num_of_prime_numbers
      @prime_numbers << i if is_prime?(i)
      i += 1
    end
  end

  def num_of_prime_numbers=(n_prime_number)
    validate_param(n_prime_number)
    @num_of_prime_numbers = n_prime_number
  end

  #Optimized eratosthenes
  def create_prime_numbers_by_max(max)
    # For odd i, if i is prime, nums[i >> 1] is true.
    # Set false for all multiples of 3.
    nums = [true, false, true] * ((max + 5) / 6)
    nums[0] = false  # 1 is not prime.
    nums[1] = true   # 3 is prime.

    # Outer loop and both inner loops are skipping multiples of 2 and 3.
    # Outer loop checks i * i > n, same as i > Math.sqrt(n).
    i = 5
    until (m = i * i) > max
      if nums[i >> 1]
        i_times_2 = i << 1
        i_times_4 = i << 2
        while m <= max
          nums[m >> 1] = false
          m += i_times_2
          nums[m >> 1] = false
          m += i_times_4  # When i = 5, skip 45, 75, 105, ...
        end
      end
      i += 2
      if nums[i >> 1]
        m = i * i
        i_times_2 = i << 1
        i_times_4 = i << 2
        while m <= n
          nums[m >> 1] = false
          m += i_times_4  # When i = 7, skip 63, 105, 147, ...
          nums[m >> 1] = false
          m += i_times_2
        end
      end
      i += 4
    end

    prime_numbers = [2]
    nums.each_index {|i| prime_numbers << (i * 2 + 1) if nums[i]}
    prime_numbers.pop while prime_numbers.last > max
    prime_numbers
  end

  #Normal eratosthenes
  def create_prime_numbers_not_opt(max)
    nums = [nil, nil, *2..max]
    (2..Math.sqrt(max)).each do |i|
      (i**2..max).step(i){|m| nums[m] = nil}  if nums[i]
    end
    nums.compact
  end

  private

  def validate_param(n_prime_number)
    raise "The value passed has to be an integer" unless  n_prime_number.is_a?(Integer)
    raise "The number passed has to be > 1" if  n_prime_number < 2
  end

  def is_prime?(n)
    for d in 2..(Math.sqrt(n))
      if (n % d) == 0
        return false
      end
    end
    true
  end
end