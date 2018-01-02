require './lib/transaction.rb'

describe Transaction do
  before(:each) do
    @transaction = Transaction.new(50, 'deposit', '2/1/2018', 100)
  end
  context 'new transaction' do
    it 'is initialised with an amount' do
      expect(@transaction.amount).to eq(50)
    end
    it 'is initialised with a type' do
      expect(@transaction.type).to eq('deposit')
    end
    it 'is intialised with a date' do
      expect(@transaction.date).to eq('2/1/2018')
    end
    it 'is initialised with a balance' do
      expect(@transaction.balance).to eq(100)
    end
  end
end
