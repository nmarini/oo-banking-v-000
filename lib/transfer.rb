class Transfer
  attr_accessor :status
  attr_reader :sender, :reciever, :amount

  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @amount = amount
    @status = "pending"
  end
end
