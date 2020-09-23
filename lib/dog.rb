class Dog
  attr_accessor :owner, :mood
  attr_reader :name 
 
  
    @@all = [] 
    
    def initialize(name, owner)
      @name = name
      @owner = owner
      @mood = "nervous"
      @@all << self 
    end 
    
    def self.all 
      @@all 
    end
    
    def mood=(mood) 
      @mood = mood
    end
   
  
    # def mood 
    #   mood = @mood 
    #   if self.walk
end