class Zoo
  #Has many animals
  @@all = []
  attr_reader :location
  #attr_writer :location, :name
  attr_accessor :name

  def initialize(name, location)
    @name = name
    @location = location
    #When you create a zoo, it'll automatically be shoveled into the @@all array
    @@all << self
  end

  def self.all
    #self is the Zoo class
    @@all
  end

  def animals
    #self = instance of zoo
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  def animal_names
    self.animals.map { |animal| animal.type }.uniq
  end

  def find_by_type(type)
    self.animals.select do |animal|
      animal.type == type
    end
  end

  def self.find_by_location(location)
    self.all.select do |zoo|
      zoo.location == location
    end
  end
















end
