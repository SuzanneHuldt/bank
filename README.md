# Bank Tech Test

- Practice tech test to write a banking program with the following specifications (as given in the Makers Academy requirements file):

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

## Technologies
- the tech test is completed with Ruby code
- all testing is done with RSpec
- code is linted with RuboCop
- test coverage is assessed with SimpleCov

## Approach
- all code on this project has been test-driven, with a failing test the first port of call for each feature implementation
- the requirements are implemented in an object oriented style:
- Instances of the class Account are responsible for withdrawal and deposit, and hold a balance (that is initialised as 0)
- Instances of the class Account also contain an array ("transactions") that holds information for each withdrawal or deposit. This information is held in the form of instances of the class Transaction, that exposes the attributes amount, type (deposit or withdrawal), date, and the balance of the account upon completion of each transaction.
- New Transaction instances are created by instances of Account
- Instances of the class Bank are responsible for printing statements from a given instance of Account

## User Guide
- bundle install will install the relevant gem dependencies
- to run tests and see test coverage run RSpec
- the interface for the program is a command line repl (eg. irb): require account.rb, bank.rb, and transaction.rb in a repl to use
