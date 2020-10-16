class Owner
  attr_reader :name, :species
  attr_writer :owners
  @@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  def self.all
    @@owners
  end
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end
  def self.count
    @@owners.length
  end
  def self.reset_all
    @@owners.clear
  end
end