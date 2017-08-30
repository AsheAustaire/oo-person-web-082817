# your code goes here
require "pry"

class Person
  #create the person class
  # attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    # inti with name, bank_account, happiness_points, hygiene_points
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end

  def happiness=(happiness)
    #Sets happiness and sets happiness limits
      @happiness = happiness
    if @happiness < 0
        @happiness = 0
    elsif @happiness > 10
        @happiness = 10
    end 
  end

  def bank_account=(bank_account)
    #sets bank_account
    @bank_account = bank_account
  end

  def hygiene=(hygiene)
    #sets_hygiene
    @hygiene = hygiene
  end

  def happiness
    #gets happiness
    @happiness
  end

  def bank_account
    #gets bank_account
    @bank_account
  end

  def hygiene
    #gets hygiene
    @hygiene
  end
binding.pry
end
