# Add your code here
# Add your code here
class Dog
    @@all = []
    
    def initialize(name)
        @name = name
        self.save
    end
    
    def self.all
        @@all
    end
    
    def self.clear_all
        self.all.clear
    end
    
    def self.print_all
    self.all.each {|dog| puts dog.name}
    end
    
    def name
    @name 
    end
    
    def save
        @@all << self
    end
    end
    