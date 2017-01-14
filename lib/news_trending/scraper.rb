class NewsTrending::Scraper

  def self.scrape_nytimes
    doc = Nokogiri::HTML(open("http://www.nytimes.com/pages/technology/index.html"))

    article = NewsTrending::Article.new
    article.name = doc.search("h3").first.text.strip
    article.author = doc.search("h6.byline").first.text.strip
    article.summary = doc.search("p.summary").first.text.strip
    article.url = doc.search("h3 a").first.attr("href").strip
    article.source = "The New York Times"
    article
  end

  # def self.scrape_washpost
  #   doc = Nokogiri::HTML(open("https://www.washingtonpost.com/politics/?nid=menu_nav_politics"))
  #
  #   article = PoliticalNews::Article.new
  #   article.name = doc.search("h3").first.text.strip
  #   article.author = doc.search("div.story-list-meta-social ul li").first.text.strip
  #   article.summary = doc.search("div.story-description p").first.text.strip
  #   article.url = doc.search("h3 a").first.attr("href").strip
  #   article.source = doc.search("div #logo-in-nav a img").first["alt"]
  #   article
  # end
  #
  #
end
