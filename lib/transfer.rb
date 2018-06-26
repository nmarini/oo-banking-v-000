class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end

  def execute_transaction
    if sender.valid?
      receiver.balance + amount
      sender.balance - amount
      self.status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end
  end
end
