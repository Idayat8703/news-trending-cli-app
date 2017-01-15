class NewsTrending::Article

  attr_accessor :name, :author, :summary, :url, :source

  def self.today
    articles = []

    articles << NewsTrending::Scraper.scrape_nytimes1
    articles << NewsTrending::Scraper.scrape_nytimes2
    articles << NewsTrending::Scraper.scrape_nytimes3
    articles << NewsTrending::Scraper.scrape_nytimes4
    articles << NewsTrending::Scraper.scrape_nytimes5
    articles << NewsTrending::Scraper.scrape_nytimes6

    articles
  end
end
