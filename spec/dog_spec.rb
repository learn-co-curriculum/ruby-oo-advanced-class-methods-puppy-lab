require "spec_helper"

describe "Dog" do

  describe ".new" do
    it "initializes with one argument - a name" do
      expect{Dog.new("Snoopy")}.to_not raise_error
    end
  end

  let!(:pluto) { Dog.new("Pluto") }
  let!(:fido) { Dog.new("Fido") }
  let!(:maddy) { Dog.new("Maddy") }

  after(:each) do
    Dog.class_variable_set(:@@all, [])
  end

  describe "class variables" do
    describe "@@all" do
      it "has a class variable, @@all, the points to an array" do
        expect(Dog.class_variable_get(:@@all)).to be_a(Array)
      end
    end
  end

  describe "class methods" do
    describe ".all" do
      it "is a class method returns all dog instances" do
        expect(Dog.all).to match([pluto,fido,maddy])
      end
    end
  
    describe ".clear_all" do
      it "is a class method that empties the @@all array of all existing dogs" do
        Dog.clear_all
        expect(Dog.class_variable_get(:@@all)).to match([]  )
      end
    end
  
    describe ".print_all" do
      it "is a class method that puts out the name of each dog to the terminal" do
        expect{Dog.print_all}.to output("Pluto\nFido\nMaddy\n").to_stdout
      end
    end
  end
  

  describe "#save" do
    it "adds this dog instance to the @@all array when called" do
      Dog.clear_all
      pluto.save
      expect(Dog.class_variable_get(:@@all)).to match([pluto])
      maddy.save
      expect(Dog.class_variable_get(:@@all)).to match([pluto, maddy])
    end

    it "gets called inside initialize when a new Dog is created" do
        expect_any_instance_of(Dog).to receive(:save)
        Dog.new('Luca')
    end
  end

  describe "#name" do
    it "has a name" do
      expect(pluto.name).to eq("Pluto")
    end
  end
end