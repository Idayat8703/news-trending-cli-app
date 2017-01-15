class NewsTrending::CLI

  def call
     list_articles
     puts "---------------------------------"
     menu
   end

   def list_articles
     puts "---------------------------------"
     puts "| Most Recent Trending News     |"
     puts "---------------------------------"
     @articles = NewsTrending::Article.today
     @articles.each.with_index(1) do |article, i|
       puts "#{i}. #{article.source} - '#{article.name} - #{article.author}"
     end
   end

   def menu
     input = nil
     while input != "exit"
     puts "Please pick a number for more info about the article, type list to see the articles again, or type exit:"
       input = gets.chomp.downcase

       if input.to_i > 0
         the_article = @articles[input.to_i-1]
         puts "---------------------------------"
         puts "#{the_article.source}: "
         puts " "
         puts "#{the_article.name} - #{the_article.author}"
         puts " "
         puts " #{the_article.summary}"
         puts " "
         puts "#{the_article.url}"
         puts "---------------------------------"
       elsif input == "list"
         list_articles
       elsif input == "exit"
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
