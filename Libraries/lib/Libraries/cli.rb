class Libraries::CLI

  def call
    Libraries::Scraper.scrape_branch
    puts "Welcome to the Libraries in Queens"
    start
  end

  def print_location(location)
    puts ""
    puts "-------------- #{location} --------------"

    puts ""
    puts location
    puts ""

  end

  def start
    puts ""
    puts "What location would you like to find?"
    input = gets.strip

    print_location(input)

    puts ""
    puts "What location would you like more information on?"
    input = gets.strip
    until input = "exit"

    location = Libraries::Location.find(input.to_i)

    print_location(location)

    puts ""
    puts "Would you like to see another location? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    else
      puts ""
      puts "Thankyou,Goodbye!"
      exit
    end
  end
  end
end
