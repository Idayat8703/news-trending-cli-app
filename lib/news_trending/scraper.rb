require 'pry'
require 'nokogiri'
require 'open-uri'

class NewsTrending::Scraper

  def get_page
    Nokogiri::HTML(open("http://money.cnn.com/technology/"))
  end 
  
  def scrape_tech_news
    self.get_page.css("div#t1-50 li")
    binding.pry
  end
end 