class Article 

        attr_accessor :title, :date, :url, :contents
        @@all = []

    def initialize(title, date, url)
        @title = title
        @date = date
        @url = url
        self.save
    end 

    
    def self.all 
        @@all 
    end 


    def save 
        @@all << self
    end 
end
