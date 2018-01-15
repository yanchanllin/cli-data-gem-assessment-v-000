require 'pry'
require 'nokogiri'
require 'open-uri'
class Libraries::Scraper
     attr_accessor :name, :location

  def self.scrape_branch
      doc = Nokogiri::HTML(open("http://www.queenslibrary.org/ql_findabranch"))
      name = doc.search("td").each do |td|
      binding.pry
      branch_name = td.search("a").children.text
      address = td.children[2].text +" " +td.children[4].text
      phone = td.children[6].text

      Libraries::Location.new(branch_name,address,phone)
      end
    end

end
