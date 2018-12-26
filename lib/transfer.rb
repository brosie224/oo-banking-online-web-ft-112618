class Transfer

  attr_accessor :amount, :sender, :receiver

def initialize(sender, receiver, amount)
  @amount = amount
  @sender = sender
  @receiver = receiver
  @status = "pending"
end

end
