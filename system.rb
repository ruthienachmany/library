# A small system for managing a personal library, accessible from the command line. 
# Author: Ruthie Nachmany 
# Version: 9/16/13
# Language: Ruby
# Instructions: To start program, run $ruby system.rb

require_relative './library.rb'
require_relative './book.rb'

  puts "Welcome to your library!"
  
  loop do
    input = gets.chomp.downcase.capitalize #Standardizes inputs

    input_array = input.split(%r{"\s*}).delete_if {|array_item| array_item == ""} #Splits string by quotation marks to demarcate author, title

    if input.start_with?("Add")
      book_author_from_input = input_array[1] #Gets author
      book_title_from_input = input_array[2] #Gets title
      Library.add(book_author_from_input, book_title_from_input)
    end

    if input.start_with?("Read")
      book_title_from_input = input_array[1] #Gets title
      Library.find_by_title(book_title_from_input).read #Finds book by title, marks book as read
      puts "You've read \"#{book_title_from_input.downcase.split.map(&:capitalize).join(' ')}\"!"
    end 
    
    if input.start_with?("Show all by")
       book_author_from_input = input.split(/"/)[1] #Gets author
       Library.show_all_by(book_author_from_input) #Shows all books by author
    end
    
    if input == "Show all"
      Library.show_all #Shows all books
    end
    
    if input.start_with?("Show unread by")
       book_author_from_input = input.split(/"/)[1] #Gets author
      Library.show_unread_by(book_author_from_input) #Shows all unread books by author
    end

    if input == "Show unread"
      Library.show_unread #Shows all unread books
    end

    if input == "Quit"
      puts "Bye!"
      break #Exits program
    end
end


