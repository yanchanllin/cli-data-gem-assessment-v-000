class Libraries::Scraper
     attr_accessor :name, :location

  def self.scrape_branch
      doc = Nokogiri::HTML(open("http://www.queenslibrary.org/ql_findabranch"))
      # binding.pry
      sleep
      name = doc.search("a .bold").text

    end

end
