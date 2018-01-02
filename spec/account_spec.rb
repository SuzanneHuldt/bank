require './lib/account.rb'

describe Account do

  before(:each) do
    @account = Account.new
  end

  context "#new account" do
    it "creates a new account object with a balance of 0" do
    expect(@account.balance).to equal 0
    end
  end

  context "#deposit" do
    it "adds the amount deposited to the balance" do
      expect {@account.deposit(10) }.to change{@account.balance}.by(+10)
    end
    it "records the deposit in the transaction list" do
      expect {@account.deposit(10)}.to change{@account.transactions.length}.by(1)
    end
  end

  context "#withdrawl" do
    it "removes the amount deposited from the balance" do
      expect {@account.withdraw(10)}.to change{@account.balance}.by(-10)
    end
    it "records the withdrawl in the transaction list" do
      expect {@account.withdraw(10)}.to change{@account.transactions.length}.by(1)
    end
  end


end
