require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    #if status == "pending" then
    binding.pry
      if @sender.valid? == false then
        #@sender.balance -= @amount
      #  @receiver.balance += @amount
      #  @status = "complete"
      #else
      
        @status = "rejected"
        message = "Transaction rejected. Please check your account balance."
        message
      #end
    end
  end

end
