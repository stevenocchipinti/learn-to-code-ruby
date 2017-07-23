################################################################################
#
#                            Bank Account Exercise
#                            ---------------------
#
#
# This application simulates a bank where funds can be transferred from one
# account to another.
#
# This exercise is broken into two parts:
#   1. An Account class: This has the logic of a bank account
#   2. Tests: These will form the basis of the exercises
#
# NOTE: ASK YOUR COACH ABOUT TEST DRIVEN DEVELOPMENT (TDD)
#
# You will notice that when you run this program, it will raise an error
# because the tests are not passing. You will need to modify the code in the
# Account class to make the tests pass.
#
# Once the tests are passing, you can uncomment the next paragraph of tests to
# work on the next exercise, these tests will also fail and the errors will
# guide you to build the next feature.
#
################################################################################


class Account
  # NOTE: This is the method that gets called when you use Account.new
  def initialize(balance)
    @balance = balance
  end

  def balance
    @balance
  end
end


################################################################################
#
# Exercises / tests
#
################################################################################

require 'test/unit'
extend Test::Unit::Assertions

# ------------------------------------------------------------------------------
# 1. Add a method called "balance" that will return the current @balance
# ------------------------------------------------------------------------------

account = Account.new 10
assert_equal account.balance, 10


# ------------------------------------------------------------------------------
# 2. When a new bank account is opened it should start with a balance of 0,
# unless a parameter was given to the constructor, in which case it should
# use that value instead.
# ------------------------------------------------------------------------------

# account = Account.new
# assert_equal account.balance, 0


# ------------------------------------------------------------------------------
# 3. Add a deposit method that will add funds to the balance.
# ------------------------------------------------------------------------------

# account = Account.new 100
# assert_equal account.balance, 100
# account.deposit 50
# assert_equal account.balance, 150


# ------------------------------------------------------------------------------
# 4. Add a withdraw method that will subtract funds from the balance.
# ------------------------------------------------------------------------------

# account = Account.new 100
# assert_equal account.balance, 100
# account.withdraw 50
# assert_equal account.balance, 50


# ------------------------------------------------------------------------------
# 5. If a withdrawal exceeds the funds available, raise an error and prevent
# that transaction from going ahead.
# ------------------------------------------------------------------------------

# account = Account.new 100
# assert_raise { account.withdraw 101 }


# ------------------------------------------------------------------------------
# 6. Add a transfer method that will allow you to withdraw funds from an
# account and deposit it in to another account. This method can take a
# amount to transfer and beneficiary account as arguments. For example:
# ------------------------------------------------------------------------------

# my_account = Account.new 100
# other_account = Account.new 100
# my_account.transfer 50, other_account
# assert_equal my_account.balance, 50
# assert_equal other_account.balance, 150


# ------------------------------------------------------------------------------

puts
puts "  Congratulations! Everything seems to be working :)"
puts
