#Library to create a multiplication table of prime numbers

## Quick Start Guide
The quickest way to try the library is by running the command line program "prime_test.rb"

```ruby
ruby prime_test.rb
```
The above command will print out a multiplication table of the first 10 prime numbers

If you'd like to print a multiplication table of a number of prime numbers different than 10
you can pass a parameter representing the prime numbers you want the table to be built on

```ruby
ruby prime_test.rb 20
```

If you want to try the library yourself below is a code snippet containing the steps to create a multiplication table
of 20 prime numbers

```ruby
pn = PrimeBuilder.new(20)
pn.create_prime_numbers
pt = PrimeTable.new(pn.prime_numbers)
pt.print_mult_table
```


## Supported Ruby Versions
This library aims to support and is [tested against][travis] the following Ruby
implementations:

* Ruby 1.9.2
* Ruby 1.9.3
* Ruby 2.0.0

If something doesn't work on one of these interpreters, it's a bug.

This library may inadvertently work (or seem to work) on other Ruby
implementations, however support will only be provided for the versions listed
above.

If you would like this library to support another Ruby version, you may
volunteer to be a maintainer. Being a maintainer entails making sure all tests
run and pass on that implementation. When something breaks on your
implementation, you will be responsible for providing patches in a timely
fashion. If critical issues for a particular implementation exist at the time
of a major release, support for that Ruby version may be dropped.


## Copyright
Copyright (c) 2013 Cosimo Ranieri.
