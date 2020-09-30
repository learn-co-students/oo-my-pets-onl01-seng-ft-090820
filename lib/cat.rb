class Cat
  attr_reader :name 
  attr_accessor :owners, :mood

  @@all = []

  def initialize(name, owners)
    @name = name
    @@owners = owners
    @mood = "nervous"
  end
  
  def self.all
    @@all
  end
end