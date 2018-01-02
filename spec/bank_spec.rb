require './lib/bank.rb'
require './lib/account.rb'

describe Bank do
  before(:each) do
    @bank = Bank.new
  end

  context "#print statement" do
    xit "prints statement for given account" do
      @account = Account.new
      @account.deposit(50)
      @account.withdraw(30)
      expect(@bank.print(@account)).to be_instance_of(String)
    end
  end
end
