class NewsTrending::CLI

  def main_menu
     input = nil
     while input != "exit"
       puts "Welcome! Which article would you like to read?, Technology or Entertainment? Type 'exit' to exit."
       input = gets.chomp.downcase
       case input
       when "technology", "tech"
         list_news_technology
       when "entertainment"
         list_news_entertainment
       when "exit"
         farewell
       else
         puts "Please enter a valid input!"
       end
     end
  end
end

def list_news_technology
   input = nil
   while input != ("back" || "exit")
     puts "Which article would you like to read?"
     puts "Make your selection by typing a number from 1-10. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
     input = gets.chomp
     case input
     when "1"
       puts "More details about the article"
       end
       puts "Type main menu to return to the list of articles. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
       number =gets.chomp
       if number == "main menu"
         main_menu
       elsif number == "back"
         main_menu
       elsif number =="exit"
         farewell
       else
        puts "Come back later!!"
       end
   end
 end
 def farewell
     abort("Thanks for checking us out! See you next time!")
   end
