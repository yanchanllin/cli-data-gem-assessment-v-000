git type libraries its going to run a file
http://www.queenslibrary.org/
http://www.queenslibrary.org/branch/Elmhurst?filters=ev_loc:93200000
def call
    start
  end

def list
    puts ""
    puts "Libraries in queens area"
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
    list
    input = nil
    while input != "exit"
      puts ""
      puts "What location would you like more information on by name?"
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
