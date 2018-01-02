require './lib/account.rb'

class Bank

def print(account)
for i in account.transactions do
  for x in i do
  p x
end
end
end
end
