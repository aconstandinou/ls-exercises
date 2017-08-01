require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

# require 'simplecov'
# SimpleCov.start

class CashRegisterTest < MiniTest::Test

#  def setup
#    @cash_register = CashRegister.new(100)
#  end

  def test_accept_money
    register = CashRegister.new(1000)
    transaction = Transaction.new(20)
    transaction.amount_paid = 20

    previous_amount = register.total_money
    register.accept_money(transaction)
    current_amount = register.total_money

    assert_equal previous_amount + 20, current_amount
  end

  def test_change_money
    register = CashRegister.new(1000)
    transaction = Transaction.new(19.95)
    transaction.amount_paid = 20

    current_change = register.change(transaction)

    assert_equal 20-19.95, current_change
  end

  def test_give_receipt
    register = CashRegister.new(1000)
    transaction = Transaction.new(19.95)

    assert_output ( stdout = "You've paid $19.95.\n") do
                    register.give_receipt(transaction)
    end
  end

  def test_prompt_payment_V1
    transaction = Transaction.new(19.95)
    transaction.prompt_for_payment
    assert_equal 20, transaction.amount_paid
  end

  def test_prompt_payment_V2
    transaction = Transaction.new(30)
    input = StringIO.new('30\n')
    transaction.prompt_for_payment(input: input)
    assert_equal 30, transaction.amount_paid
  end
end
