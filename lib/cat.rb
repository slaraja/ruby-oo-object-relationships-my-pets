require 'pry'
class Cat
attr_reader :name 
attr_accessor :owner, :mood

@@all=[]
  def initialize(name, owner)
    @owner=owner
    @name=name
    @mood= "nervous"
    @@all<<self
    @owner.cats<<self
  end 
  
  def self.all
    @@all
  end
 end