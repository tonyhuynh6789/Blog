class Article 

        attr_accessor :title, :date, :contents
        @@all = []

    def initialize(title, date, contents)
        @title = title
        @date = date
        @contents = contents
        self.save
    end 

    
    def self.all 
        @@all 
    end 


    def save 
        @@all << self
    end 
end
