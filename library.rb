class Library
  include Enumerable
  require_relative './book.rb'
  
  BOOKS_ARRAY = [] #Stores all books
  
  def self.add(title, author) # Adds book with given title and author to the library
    if author != nil && title != nil
      then 
        new_book_title = title.downcase.split.map(&:capitalize).join(' ') #Standardizes titles by capitalizing all words
        new_book_author = author.split.map(&:capitalize).join(' ') #Standardizes authors by capitalizing all words
    end
    if (BOOKS_ARRAY.find {|book| book.title == new_book_title}) == nil #User is not allowed to add two books with the same title
      then BOOKS_ARRAY << Book.new(new_book_title, new_book_author)
        puts "Added \"#{new_book_title}\" by #{new_book_author}"
    end 
  end

   
   def self.find_by_title(title) # Finds book by title so that 'read' method can be called on an instance of the Book class
    if title != nil
      then search_title = title.downcase.split.map(&:capitalize).join(' ') #Standardizes title to be searched
    end
     BOOKS_ARRAY.find do |book|
         book.title == search_title
      end
   end

   def self.show_all # Displays all books
      BOOKS_ARRAY.each do |book|
        puts "\"#{book.title}\" by #{book.author} (#{book.status})"
      end
   end

   def self.show_unread # Displays all unread books
     BOOKS_ARRAY.find_all do |book|
        if book.status == "unread"
          then  puts "\"#{book.title}\" by #{book.author} (#{book.status})"
        end
      end
   end

   def self.show_all_by(author) # Displays all books by the given author
     BOOKS_ARRAY.find_all do |book|
        if book.author.downcase == author.downcase #Standardizes author name to be searched
           then puts "\"#{book.title}\" by #{book.author} (#{book.status})"
        end
     end
   end

  def self.show_unread_by(author) # Displays all unread books in the library by the given author
    BOOKS_ARRAY.find_all do |book|
      if book.author.downcase == author.downcase && book.status == "unread"
         then puts "\"#{book.title}\" by #{book.author} (#{book.status})"
      end
    end
  end

end

