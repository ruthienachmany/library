class Book
  include Enumerable
  require_relative './library.rb'

  attr_reader :title, :author
  attr_accessor :status

  def initialize(title, author) #Initializes a book with a title, an author, and a status of unread.
    @title = title
    @author = author
    @status = "unread"
  end

  def read #Marks status of book as read.
    self.status = "read"
  end


end
