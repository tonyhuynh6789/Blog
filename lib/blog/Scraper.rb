class Scraper 

    def self.scrape_title_and_dates

    html = "https://learntocodewith.me/blog/"
    doc =  Nokogiri::HTML(open(html))

  
    array_of_title = doc.css('div.col-sm-10.col-sm-offset-1 header.post-title')
    title_of_articles = array_of_title.each do |section|

            title = section.css('a').text.gsub("here","")
            date = section.css('p time').text
            content_url = section.css('a')[0]['href']
            Article.new(title, date, content_url)
        
        end 
    end 


    def self.scrape_contents(article_obj)
        html = open(article_obj.content_url)
        doc = Nokogiri::HTML(html)
        article_obj.content_url = doc.css('div.col-sm-10.col-sm-offset-1 section.post-content p.lead').text
    end 

end 







    
 