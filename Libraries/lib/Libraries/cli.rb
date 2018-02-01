
class Libraries::CLI

  def call
    Libraries::Scraper.scrape_branch
    puts ""
    puts "--------------Welcome to the Libraries in Queens--------------"
    start
  end

  def print_location(location)
    if location == nil
      puts "Sorry try again,please enter from 1-68"
    else
      puts ""
      puts "-------------- #{location.branch_name} --------------"

      puts ""
      puts "Location:   #{location.address}"
      puts "Contact:    #{location.phone}"
      puts ""
    end
  end

  def print_locations
    Libraries::Location.all.each_with_index do |location,index|
      puts "#{index+1}. #{location.branch_name}"
    end
  end

  def start
    puts ""
    puts "Which location would you like to find?"
    puts "(Note:There are 68 libraries list in Queens, please enter from 1-68)"
    puts ""
    print_locations
    input = gets.strip.to_i

    location = Libraries::Location.find(input)
    print_location(location)

    puts "Which location would you like more information on?"
    puts "(Note:There are 68 libraries list in Queens, please enter from 1-68)"
    puts ""
    input = gets.strip.to_i

    location = Libraries::Location.find(input)
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
