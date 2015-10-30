require "spec_helper"

describe "Dog" do 
  
  after(:each) do 
    Dog.clear_all
  end
  
  describe "Dog class variables" do 
    it "has a class variable, @@all, the points to an array" do 
      expect(Dog.class_variable_get(:@@all)).to eq([] )
    end
  end

  describe ".clear_all" do 
    it "is a class method that empties the @@all array of all existing dogs" do 
      Dog.new("Pluto")
      Dog.new("Maddy")
      Dog.clear_all
      expect(Dog.class_variable_get(:@@all)).to match([]  )
    end
  end

  describe ".all" do
    it "is a class method that puts out the name of each dog to the terminal" do 
      Dog.new("Pluto")
      Dog.new("Maddy")
      expect{Dog.all}.to output("Pluto\nMaddy\n").to_stdout
    end 
  
  describe "#new" do 
    it "initializes with an argument of a name" do 
      expect{Dog.new("Pluto")}.to_not raise_error
    end

    it "adds the new dog to the @@all array" do
      pluto = Dog.new("Pluto")
      fido = Dog.new("Fido")
      expect(Dog.class_variable_get(:@@all)).to match([pluto, fido]) 
    end
  end

  end
    
  describe "#name" do 
    it "has a name" do 
      pluto = Dog.new("Pluto")
      expect(pluto.name).to eq("Pluto")
    end
  end
end