class NewsTrending::CLI

  def call
    NewsTrending::Scraper.scrape_articles
    list_top_articles
     puts "---------------------------------"
     main_menu
   end

   def list_top_articles
     #shows a list of all the Trending news for the day using the instance of article
     puts "---------------------------------"
     puts "| Most Trending News for Today   |"
     puts "---------------------------------"
     NewsTrending::Article.all.each.with_index(1) do |article, i|
       puts "#{i}. #{article.source} - '#{article.name} - #{article.author}"
     end
   end

   def main_menu
     #ask user for input about the article they would like to read
     #returns the information for the user
     # allows the user to diplay the articles again or to exit.
     ans = nil
     while ans != "exit"
     puts "Please pick a number for more info about the article, type list to see the articles again, or type exit:"
       ans = gets.chomp.downcase

       if ans.to_i > 0 && ans.to_i <=6
         the_first_article = NewsTrending::Article.find_by_index(ans.to_i - 1)
         puts "---------------------------------"
         puts "#{the_first_article.source}: "
         puts " "
         puts "#{the_first_article.name} - #{the_first_article.author}"
         puts " "
         puts " #{the_first_article.summary}"
         puts " "
         puts "#{the_first_article.url}"
         puts "---------------------------------"
       elsif ans == "list"
         list_top_articles
       elsif ans == "exit"
         goodbye
       else
         puts "Please make a valid input"
       end
     end
   end

   def goodbye
     abort("See you tomorrow!")
   end
 end
