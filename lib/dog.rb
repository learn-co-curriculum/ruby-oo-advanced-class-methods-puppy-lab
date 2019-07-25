class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def self.print_all
    # puts @@all.map(&:name) - another way to solve, but more complex than needed for this example
    puts @@all.map{ |dog| dog.name }
  end

  def self.clear_all
    @@all.clear
  end

  def save
    @@all << self
  end
end
