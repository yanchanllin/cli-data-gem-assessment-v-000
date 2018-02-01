MEATS = [
  'Chicken',
  'Beef',
  'Pork'
]

COLORS = [
  "Blue",
  "Red",
  "Yellow",
  "Orange",
  "Pruple",
  "Black",
  "White",
  "Indigo"
]

PETS = [
  'Cats',
  'Dogs',
  'Fish',
  'Bear'
]

def menu
  puts "meats"
  puts "pets"
  puts "colors"
  puts "What would you like to see today?\n"
end

def greeting
  puts "Hi, welcome to my example\n"
end

def start
  greeting
  input = ''
  until input=='exit'
    menu
    input=gets.strip
    if input == 'meats'
      puts MEATS
    elsif input == 'colors'
      puts COLORS
    elsif input == 'pets'
      puts PETS
    elsif input == 'exit'
      break
    else
      puts "I did not understand that.  Try again."
    end
  end
  puts "Thanks for looking at stuff today!  Bye!"
end
