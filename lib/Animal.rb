class Animal
  #Belongs to Zoo
  attr_reader :type, :zoo
  attr_accessor :weight
  @@all = []

  def initialize(type, weight, zoo)
    @type = type
    @weight = weight
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_type(type_arg)
    self.all.select do |animal|
      animal.type == type_arg
    end
  end

end
