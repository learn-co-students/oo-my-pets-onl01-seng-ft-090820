class Owner
 
 attr_reader :species, :name
 attr_accessor :cats, :dogs
 
 @@all = []

 def initialize(name)
   @species = "human"
   @name = name
   @@all << self 
   end 
 
 def self.all 
   @@all
 end 
 
 def self.count 
   @@all.length 
 end 
 
 def self.reset_all
   @@all.clear
 end 
 
 def say_species
   "I am a #{species}."
 end 
 
 def cats
   Cat.all.select{|c| c.owner == self}
 end 
 
 def dogs 
   Dog.all.select{|d| d.owner == self}
 end 
 
 
def buy_cat(cat)
 @cats == Cat.new(cat,self)
  
end
 
def buy_dog(dog)
   @dogs == Dog.new(dog,self) 
 end 
 
 def walk_dogs
   Dog.all.each do |dog|
     dog.mood = "happy"
   end 
   end 
   
  def feed_cats
     Cat.all.each do |cat|
       cat.mood = "happy"
     end 
     end 
     
    def sell_pets
    self.cats.each do |cat|
      self.cats.delete(cat)
      cat.owner = nil
      cat.mood = "nervous"
    end 
    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.owner = nil 
      dog.mood = "nervous"
    end 
  end 
       
    def list_pets
       "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
    end 
 
 
end