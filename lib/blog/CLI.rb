class CLI


def run
     puts ('  ' * 6) + '*****Wellcome to the Blog built by Laurence Bradford*****'
       
        Scraper.scrape_title_and_dates
        display_titles_dates
        ask_for_title_choice 
end 



def display_titles_dates
    puts (' ' * 14) + "Bellow are tittles and their published dates and times"
    
        Article.all.each.with_index(1) do |title_date,idx|
        puts "#{idx}. #{title_date.title}."
        puts (' ' * 3) + "Published date: #{title_date.date}"
        end 
end 


def valid_input?(input)
    input.between?(1, Article.all.size)
end 


def ask_for_title_choice

    puts (' ' * 10) + "Choose to know more about the article, choose between 1 - #{Article.all.size}."
        prompt = ">"
        print prompt
        input = gets.chomp.to_i
       
            until valid_input?(input)
            puts (' ' * 15) + "Not a valid choice, please choose from 1 - #{Article.all.size}"
            input  = gets.chomp.to_i
            end 
            puts (' ' * 30) + "Here is the summary"
            puts display_contents(input)  
            puts break_or_return(input)
end 


def display_contents(input)
    article = Article.all[input -1]
    Scraper.scrape_contents(article)
        puts article.contents
end 



def break_or_return(input)
    puts (' ' * 13) + "Type main to cricle back to main page or exit to exit"
    prompt = ">"
    print prompt
    
   while input = gets.chomp
        case input 
        when "exit"
            break 
        when "main"
            puts "Back To Main Page"
            display_titles_dates
            ask_for_title_choice 
        else 
            puts "Not a choice"
        end 
    end 
end 
end 







