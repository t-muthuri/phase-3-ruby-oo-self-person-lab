# your code goes here

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25 #set to the initial values
      @happiness = 8
      @hygiene = 8
    end
  
    def happiness=(value)
      @happiness =  if value > 10 #max
                      10
                    elsif value < 0 #min
                      0
                    else
                      value #set
                    end
    end
  
    def happy?
        if @happiness > 7
            true
        else
            false
        end
        end
        
    def hygiene=(value)
      @hygiene =  if value > 10
                    10
                  elsif value < 0
                    0
                  else
                    value
                  end
    end
  
    def clean?
      if @hygiene > 7
        true
      else
        false
      end
    end
  
  
    def get_paid(amount)
      @bank_account += amount
      "all about the benjamins"
    end
  
    def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  
    def start_conversation(friend, topic) #accepts two arguments
        # if topic == "politics"
        #         self.happiness =@happiness - 2
        #         friend.happiness = friend.happiness- 2
        #         "blah blah partisan blah lobbyist"
        #       elsif topic == "weather"
        #         self.happiness =@happiness + 1
        #         friend.happiness = friend.happiness + 1
        #         "blah blah sun blah rain"
        #       else
        #         "blah blah blah blah blah"
        #       end
           case topic 
      when "politics"
        [self, friend].each do |person| 
            person.happiness = person.happiness - 2 
        end
        "blah blah partisan blah lobbyist"

      when "weather"
        [self, friend].each do |person| 
            person.happiness = person.happiness + 1 
        end
        "blah blah sun blah rain"
        
      else
        "blah blah blah blah blah"
      end
    end
  
  end