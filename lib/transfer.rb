class Transfer

  attr_accessor :amount, :sender, :receiver, :status

def initialize(sender, receiver, amount)
  @amount = amount
  @sender = sender
  @receiver = receiver
  @status = "pending"
end

def valid?
  if @sender.valid? && @receiver.valid?
    true
  else
    false
  end
end

def execute_transaction
  @sender.balance -= @amount
  @receiver.balance += @amount
  @status = "complete"
end

end
