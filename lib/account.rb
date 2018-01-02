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
    return @balance -= amount, record_transaction(amount, 'withdrawal') unless overdrawn?(amount)
  end

  def record_transaction(amount, type)
    transaction = Transaction.new(amount, type, Time.now.strftime('%d/%m/%Y'), @balance)
    @transactions.unshift(transaction)
  end

  def overdrawn?(amount)
    @balance - amount < 0
  end
end
