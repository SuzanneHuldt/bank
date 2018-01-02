require './lib/account.rb'
class Bank
  def print_statement(account)
    account.transactions.each do |i|
    @amount = i.amount.to_s
    @type = i.type
    @date = i.date
    @balance = i.balance.to_s
  end
  p " #{@type}: #{@amount} on #{@date} - Balance: #{@balance}"
  end
end
