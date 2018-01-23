require 'pry'
require 'nokogiri'
require 'open-uri'
class Libraries::Scraper

  def self.scrape_branch
    doc = Nokogiri::HTML(open("http://www.queenslibrary.org/ql_findabranch"))
    name = doc.search("table").first.css('td').each do |td|
      branch_name = td.search("a").children.text
      phone = td.children[6] && td.children[6].text
      if td.children[2] && td.children[2].text && td.children[4].text
        address = td.children[2].text + " " +td.children[4].text
      end
      if phone != nil && phone != nil && branch_name != ""
        Libraries::Location.new(branch_name,address,phone)
      end
    end
  end

end
