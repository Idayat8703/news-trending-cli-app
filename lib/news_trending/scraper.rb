class NewsTrending::Scraper

  # scrapes and returns intial info about the most recent news from various sections on the nytimes website

  def self.scrape_articles
    self.scrape_nytimes1
    self.scrape_nytimes2
    self.scrape_nytimes3
    self.scrape_nytimes4
    self.scrape_nytimes5
    self.scrape_nytimes6
    #finish calling the other methods in this class
  end
  def self.scrape_nytimes1
    doc = Nokogiri::HTML(open("https://www.nytimes.com/section/technology?WT.nav=page&action=click&contentCollection=Tech&module=HPMiniNav&pgtype=Homepage&region=TopBar"))

    #article = NewsTrending::Article.new
    name = doc.search(".headline").first.text.strip
    author = doc.search(".byline").first.text.strip
    summary = doc.search("p.summary").first.text.strip
    url = doc.search("h2.headline a").first.attr("href").strip
    source = "The New York Times"
    NewsTrending::Article.new(name, author, summary, url, source)

  end

  def self.scrape_nytimes2
    doc = Nokogiri::HTML(open("https://www.nytimes.com/pages/politics/index.html?action=click&pgtype=Homepage&region=TopBar&module=HPMiniNav&contentCollection=Politics&WT.nav=page"))
    article = NewsTrending::Article.new
    article.name = doc.search("h3").first.text.strip
    article.author = doc.search("h6.byline").first.text.strip
    article.summary = doc.search("p.summary").first.text.strip
    article.url = doc.search("h2 a").first.attr("href").strip
    article.source = "The New York Times"

  end

  def self.scrape_nytimes3
    doc = Nokogiri::HTML(open("https://www.nytimes.com/section/us?WT.nav=page&action=click&contentCollection=U.S.&module=HPMiniNav&pgtype=Homepage&region=TopBar"))
    article = NewsTrending::Article.new
    article.name = doc.search(".headline").first.text.strip
    article.author = doc.search(".byline").first.text.strip
    article.summary = doc.search("p.summary").first.text.strip
    article.url = doc.search("h2.headline a").first.attr("href").strip
    article.source = "The New York Times"

  end

  def self.scrape_nytimes4
    doc = Nokogiri::HTML(open("http://www.nytimes.com/pages/business/index.html?action=click&pgtype=Homepage&region=TopBar&module=HPMiniNav&contentCollection=Business&WT.nav=page"))
    article = NewsTrending::Article.new
    article.name = doc.search("h3").first.text.strip
    article.author = doc.search("h6.byline").first.text.strip
    article.summary = doc.search("p.summary").first.text.strip
    article.url = doc.search("h3 a").first.attr("href").strip
    article.source = "The New York Times"

  end

  def self.scrape_nytimes5
    doc = Nokogiri::HTML(open("https://www.nytimes.com/section/sports?WT.nav=page&action=click&contentCollection=Sports&module=HPMiniNav&pgtype=Homepage&region=TopBar"))
    article = NewsTrending::Article.new
    article.name = doc.search(".headline").first.text.strip
    article.author = doc.search(".byline").first.text.strip
    article.summary = doc.search("p.summary").first.text.strip
    article.url = doc.search("h2.headline a").first.attr("href").strip
    article.source = "The New York Times"

  end

  def self.scrape_nytimes6
    doc = Nokogiri::HTML(open("https://www.nytimes.com/section/science?action=click&pgtype=Homepage&region=TopBar&module=HPMiniNav&contentCollection=Science&WT.nav=page"))
    article = NewsTrending::Article.new
    article.name = doc.search(".headline").first.text.strip
    article.author = doc.search(".byline").first.text.strip
    article.summary = doc.search("p.summary").first.text.strip
    article.url = doc.search("h2.headline a").first.attr("href").strip

    article.source = "The New York Times"

  end
end
