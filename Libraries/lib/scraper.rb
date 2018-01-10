class Libraries::Scraper
     attr_accessor :name

  def self.scrape_branch
      doc = Nokogiri::HTML(open("http://www.queenslibrary.org/ql_findabranch"))
      # binding.pry
      name = doc.search("a .bold").text

    end

end
