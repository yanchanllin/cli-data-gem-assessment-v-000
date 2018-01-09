class Libraries::Scraper
     attr_accessor :name

  def self.scrape_now_playing
      doc = Nokogiri::HTML(open("http://www.queenslibrary.org/ql_findabranch"))
      binding.pry
      name = doc.search("a .bold").text

    end

end
