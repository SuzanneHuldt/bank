class Account
  attr_accessor :balance, :transactions

  def initialize
    @transactions = []
    @balance = 0
  end

  def deposit(amount)
    record_transaction(amount, 'deposit')
    @balance += amount
  end

  def withdraw(amount)
    record_transaction(amount, 'withdrawl')
    @balance -= amount
  end

  def record_transaction(amount, type)
    @transactions.push([type, amount.to_s, Time.now.strftime("%d/%m/%Y")])
  end
end
