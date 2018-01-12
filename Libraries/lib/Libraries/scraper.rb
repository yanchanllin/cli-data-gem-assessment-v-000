require 'pry'
require 'nokogiri'
require 'open-uri'
class Libraries::Scraper
     attr_accessor :name, :location

  def self.scrape_branch
      doc = Nokogiri::HTML(open("http://www.queenslibrary.org/ql_findabranch"))
      name = doc.search("a.bold").each do |link|
      branch_name = link.children.text
        # binding.pry

      end
    end

end
