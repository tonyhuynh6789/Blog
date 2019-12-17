class Scraper 

    def self.scrape_title_and_dates

    html = "https://learntocodewith.me/blog/"
    doc =  Nokogiri::HTML(open(html))

  
    array_of_title = doc.css('div.col-sm-10.col-sm-offset-1 header.post-title')
    title_of_articles = array_of_title.each do |titles|

            title = titles.css('a').text.gsub("here","")
            date = titles.css('p time').text
            url = titles.css('a')[0]['href']
            Article.new(title, date, url)
        
        end 
    end 


    def self.scrape_contents(article_ob)
        html = open(article_ob.url)
        doc = Nokogiri::HTML(html)
        article_ob.contents = doc.css('div.col-sm-10.col-sm-offset-1 section.post-content p.lead').text
    end 

end 







    
 