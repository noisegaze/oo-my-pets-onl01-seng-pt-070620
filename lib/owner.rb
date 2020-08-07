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
   new_cat.mood = "happy"
    cats.collect {|cats| cats += new_cat}
  end  
  
  
  
end