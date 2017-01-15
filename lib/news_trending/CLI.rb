class NewsTrending::CLI

  def call
     list_top_articles
     puts "---------------------------------"
     main_menu
   end

   def list_top_articles
     #shows a list of all the Trending news for the day using the instance of article
     puts "---------------------------------"
     puts "| Most Trending News for Today   |"
     puts "---------------------------------"
     @articles = NewsTrending::Article.today
     @articles.each.with_index(1) do |article, i|
       puts "#{i}. #{article.source} - '#{article.name} - #{article.author}"
     end
   end

   def main_menu
     #ask user for input about the articlethey would like to read
     #returns the information for the user
     # allows the user to diplay the articles again or to exit. 
     ans = nil
     while ans != "exit"
     puts "Please pick a number for more info about the article, type list to see the articles again, or type exit:"
       ans = gets.chomp.downcase

       if ans.to_i > 0
         the_first_article = @articles[ans.to_i-1]
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
         puts "Please give a valid input or type 'list' or 'exit'"
       end
     end
   end

   def goodbye
     abort("See you tomorrow!")
   end
 end
