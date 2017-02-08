class NewsTrending::Article
    # returnsan array of news from varous sections from nytimes
  attr_accessor :name, :author, :summary, :url, :source

  @@all = []

  def initialize (name: "name" , author: "author", summary: "summary", url: "url", source: "source " )
      @name = name
      @author =author
      @summary =summary
      @url = url
      @source = source
      @@all << self
  end


  def self.all
   @@all
  end

  def self.info
      all
  end

  #define a class variable to collect all instances of article

  #create the method definition here that gets called whenever .new is used
    #inside that method, populate the class variable

  #create the class method that returns ALL instances of article

  # def self.today
  #   articles = []
  #
  #   articles << NewsTrending::Scraper.scrape_nytimes1
  #   articles << NewsTrending::Scraper.scrape_nytimes2
  #   articles << NewsTrending::Scraper.scrape_nytimes3
  #   articles << NewsTrending::Scraper.scrape_nytimes4
  #   articles << NewsTrending::Scraper.scrape_nytimes5
  #   articles << NewsTrending::Scraper.scrape_nytimes6
  #
  #   articles
  # end
end
