class Account
  attr_accessor :balance, :transactions

  def initialize
    @transactions = []
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    record_transaction(amount, 'deposit')
  end

  def withdraw(amount)
    @balance -= amount
    record_transaction(amount, 'withdrawal')
  end

  def record_transaction(amount, type)
    transaction = Transaction.new(amount, type, Time.now.strftime('%d/%m/%Y'), @balance.to_s)
    @transactions.unshift(transaction)
  end
end
