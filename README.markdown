FREVO ON RAILS
==============
Pernambuco Ruby User Group

# Problem 1 - Cash Machine (ATM)

## Problem Description
What is the minimum set of bills that sums up to a given amount of money? Assume the machine is provided an unlimited amount of bills in the following values: 2, 5, 10, 20, 50 e 100.

## Sample Usage and Expected Output
    $ bin/atm 107 248
    For $ 107:
      1 * $ 100
      1 * $   5
      1 * $   2

    For $ 248:
      2 * $ 100
      2 * $  20
      4 * $   2

    $ bin/atm 11
    Unable to withdraw $ 11.

## Setting up the test environment
    gem install bundler
    bundle install
    autotest

## Contributing
1. Fork it
2. Change it
3. Red, yellow, green
4. Send a pull request

Mail us at frevo-on-rails@googlegroups.com if you need help.