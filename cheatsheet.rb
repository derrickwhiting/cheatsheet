
# have a case statement for main menu options
# command line menu
# ide menu
# search menu


def main_menu
  while true
    puts "Cheatsheet"
    puts "********************"
    puts "1. Command Line"
    puts "2. IDE"
    puts "3. Search"
    puts "4. Quit"
    print "Make a selection: "
    choice = gets.to_i

    case choice
      when 1
        command_line_menu
      when 2
        ide_menu
      when 3
        search_menu
      when 4
        quit
      else
        puts ''
        puts ''
        puts "YOU CAN'T DO THAT"
        puts ''
        puts ''
        main_menu
    end
  end
end

def command_line_menu
  while true
    puts ''
    puts ''
    puts 'COMMAND LINE OPTIONS'
    puts ''
    puts '1. Copy - cp - cp path/to/file path/to/destination'
    puts '2. Move - mv - mv path/to/file path/to/destination'
    puts '3 Make a directory - mkdir - mkdir path/name/of/directory/'
    puts '4 Main Menu'
    print 'Make a selection: '
    option = gets.to_i

    case option 
      when 1
        puts `man cp`
      when 2
        puts `man mv`
      when 3
        puts `man mkdir`
      when 4
        main_menu
      end
    end  
  end

def ide_menu
  while true
    puts '1. ⌘L - select line (repeat select next lines)'
    puts '2. ⌘D - select word (repeat select others occurrences in context for multiple editing)'
    puts '3. ⌃⇧M - select content into brackets'
    puts '4. Main Menu'
    print 'Make a selection: '
    option = gets.to_i
    puts ''
    puts ''

    case option
    when 1
      puts 'look it up on the web to get more detail'
    when 2
      puts 'look it up on the web to get more detail'
    when 3
      puts 'look it up on the web to get more detail'  
    when 4
      main_menu
    end
  end
end

def search_menu
  puts ''
  puts ''
  puts 'Search for more information on a terminal command'
  search = gets.strip
  puts `man #{search}`
  puts ''
  puts ''
  print 'Search for something else? (y/n) : '
  search_again = gets.strip
  if search_again == "y"
    search_menu
  else
    main_menu
  end
end

def quit
  exit 0
end

def make_another_selection
  puts 'Make a selection from 1-4'
end

main_menu


