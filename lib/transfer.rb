require "pry"
class Transfer
  # your code here
 attr_accessor :sender, :receiver, :amount, :status


   def initialize(sender,receiver,amount)
     @sender = sender
     @receiver = receiver
     @amount = amount
     @status = "pending"
   end

   def valid?
     if @sender.valid? && @receiver.valid?
       true
     else
       false
    end
  end

  def  execute_transaction
    if @sender.balance < @amount
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."

    elsif @status == "complete"
      puts "Transaction was already excuted"
    end
  end
  #def execute_transaction
    #if @sender.balance > @amount && @status == "pending"
       #@sender.balance -= @amount
       #@receiver.balance += @amount
       #@status = "complete"

    #else  @status = "rejected"
      #return "Transaction rejected. Please check your account balance."
    #end
  #end
end
