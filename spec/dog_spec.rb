require "spec_helper"

describe "Dog" do 
  after(:each) do 
    Dog.clear_all
  end

  describe "#new" do 
    it "initializes with an argument of a name" do 
      expect{Dog.new("Pluto")}.to_not raise_error
    end
  end

  describe "#name" do 
    it "has a name" do 
      pluto = Dog.new("Pluto")
      expect(pluto.name).to eq("Pluto")
    end
  end

  describe ".all" do
    it "is a class method that puts out the name of each dog to the terminal" do 
      Dog.new("Pluto")
      Dog.new("Maddy")
      expect{Dog.all}.to output("Pluto\nMaddy\n").to_stdout
    end 
  end
end