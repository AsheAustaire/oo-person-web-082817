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

  def name
    @name
  end

  def happiness=(happiness)
    #Sets happiness and min/max
    @happiness = happiness
    @happiness = 0 if @happiness < 0
    @happiness = 10 if @happiness > 10
  end

  def bank_account=(bank_account)
    #sets bank_account
    @bank_account = bank_account
  end

  def hygiene=(hygiene)
    #sets_hygiene and min/max
    @hygiene = hygiene
    @hygiene = 0 if @hygiene < 0
    @hygiene = 10 if @hygiene > 10
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

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene+=4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene -= 3)
    self.happiness=(@happiness += 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness=(@happiness + 3)
    person.happiness=(person.happiness + 3)
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end


binding.pry
end
