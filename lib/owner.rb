class Owner

  attr_accessor :cats, :dogs
  attr_reader :name
  @@all = []

  def initialize(name)
    @name=name
    @species="human"
    @@all<<self
    @cats=[]
    @dogs=[]
  end

  def species
    @species
  end 

  def say_species
     "I am a human."
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
 
  def buy_cat(name)
    Cat.new(name,self)
  end 

  def buy_dog(name)
    Dog.new(name,self)
  end 

  def walk_dogs
    self.dogs.each {|dog| dog.mood="happy"}
  end 

  def feed_cats
    self.cats.each {|cat| cat.mood="happy"}
  end

  def sell_pets
    self.dogs.each do|dog| 
      dog.mood="nervous"
      dog.owner=nil
      dogs.pop
    end

    self.cats.each do |cat|
      cat.mood="nervous"
      cat.owner=nil
      cats.pop
    end 

  end

  def list_pets
   "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
  
end
