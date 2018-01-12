#our CLI Controller
class Libraries::CLI

  def call
   Libraries::Scraper.scrape_branch
   puts "Welcome to the Libraries in Queens"
   start
  end

  def list
      puts ""
      puts "********Libraries in Queens Area********."
      puts ""
      Libraries::Location.all.each.with_index(1) do |location, i|
        puts "#{i}. #{location.name}"
      end
      puts ""
    end

  def print_location(location)
      puts ""
      puts "-------------- #{location.name} --------------"

      puts ""
      puts location.summary
      puts ""

    end

   def start
     puts ""
     puts "What location would you like more information on by name?"
      input = gets.strip.to_i

      print_location(input)

      #///////////////start here,not finish yet
        puts ""
        puts "Enter list to see the location again."
        puts "Enter exit to end the program."
        puts ""
        input = gets.strip
        if input == "list"
          list
        elsif input.to_i == 0
          if location = Libraries::Location.find_by_name(input)
            print_location(location)
          end
        end
      end
      puts "Goodbye!!!"
    end
  end
