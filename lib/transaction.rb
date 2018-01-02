class Transaction
  attr_accessor :amount, :type, :date, :balance
  def initialize(amount, type, date, balance)
    @amount = amount
    @type = type
    @date = date
    @balance = balance
  end
end
