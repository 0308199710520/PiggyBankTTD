class Piggybank
  attr_reader :account
  def initialize
      @account = 0
  end
  
  def deposit(amount)
      @account += amount
  end

  def shake
    if @account >= 1
      return "cling"
    end
  end
  def break
    return @account
  end
end
