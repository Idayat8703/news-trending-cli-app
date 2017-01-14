class NewsTrending::Article

  attr_accessor :name, :author, :summary, :url, :source

  def self.today
    articles = []

    articles << NewsTrending::Scraper.scrape_nytimes
    # articles << NewsTrending::Scraper.scrape_washpost
    # articles << NewsTrending::Scraper.scrape_buzzfeed_politics

    articles
  end
end