class Owner
  
  attr_reader :name, :species 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    save
  end 
  
  def say_species
    "I am a #{@species}."
  end
  
  def save 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
    
  def self.reset_all 
    @@all.clear
  end
  
  def cats 
    Cat.all.select {|cats| cats.owner == self}
  end 
  
  def dogs 
    Dog.all.select {|dogs| dogs.owner == self}
  end
  
  def buy_cat(name) 
   new_cat = Cat.new(name,self)
  end  
  
  def buy_dog(name) 
   new_dog = Dog.new(name,self)
  end  
  
  def walk_dogs
    @@all[:dogs].each do |dog|
      dog.mood = happy
    end
  end
  
  
  
  
  
  
  
  
  
end