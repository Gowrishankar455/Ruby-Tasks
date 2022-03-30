class Parent
    def say(message)
      p message
      puts "From parent"
    end
  end
  
  class Child < Parent
    def say(message)
      super #+ " From child"
    end
  end
  
  Child.new.say('Hi Rubyist!')


  class Parent1
    def say
      puts "This is parent "
    end
  end
  
  class Child1 < Parent1
    def say
      super # + " From child"
    end
  end
  
  Child1.new.say

  class Parent2
    def say(message)
      puts "This is parent "+message
    end
  end
  
  class Child2 < Parent2
    def say(message)
      super(message) # + " From child"
    end
  end
  
  Child2.new.say('Hi Rubylist!')