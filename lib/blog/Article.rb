class Article 

        attr_accessor :title, :date, :content_url
        @@all = []

    def initialize(title, date, content_url)
        @title = title
        @date = date
        @content_url = content_url
        self.save
    end 

    
    def self.all 
        @@all 
    end 


    def save 
        @@all << self
    end 
end
