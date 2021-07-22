require "piggybank"

describe "Piggybank" do
    it "Account is empty when initialised" do
      bank = Piggybank.new
      bank.account == 0
    end

    it  "Deposit a coin" do
      bank  = Piggybank.new
      bank.deposit(1)
      expect(bank.account).to eq 1
    end

    it "When shaken will cling if there there is a balance" do
      bank = Piggybank.new
      bank.deposit(1)
      expect(bank.shake).to eq "cling"
    end

    it "When shaken when empty will not cling" do
      bank = Piggybank.new
      expect(bank.shake).to eq nil
    end

    it "When broken returns the amount of money within the bank" do
      bank = Piggybank.new
      expect(bank.break).to eq bank.account
    end
end 