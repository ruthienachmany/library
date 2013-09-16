A small system for managing a personal library, accessible from the command line. 
Interact with it like so:

  $ ./library
  
  Welcome to your library!
  
  > add "The Grapes of Wrath" "John Steinbeck"
  
  Added "The Grapes of Wrath" by John Steinbeck
  
  > add "Of Mice and Men" "John Steinbeck"
  
  Added "Of Mice and Men" by John Steinbeck
  
  > add "Moby Dick" "Herman Melville"
  
  Added "Moby Dick" by Herman Melville
  
  > show all
  
  "The Grapes of Wrath" by John Steinbeck (unread)
  "Of Mice and Men" by John Steinbeck (unread)
  "Moby Dick" by Herman Melville (unread)
  
  > read "Moby Dick"
  
  You've read "Moby Dick!"
  
  > read "Of Mice and Men"
  
  You've read "Of Mice and Men"!
  
  > show all
  
  "The Grapes of Wrath" by John Steinbeck (unread)
  "Of Mice and Men" by John Steinbeck (read)
  "Moby Dick" by Herman Melville (read)
  
  > show unread
  
  "The Grapes of Wrath" by John Steinbeck (unread)
  
  > show all by "John Steinbeck"
  
  "The Grapes of Wrath" by John Steinbeck (unread)
  "Of Mice and Men" by John Steinbeck (read)
  
  > show unread by "John Steinbeck"
  
  "The Grapes of Wrath" by John Steinbeck (unread)
  
  > quit
  
  Bye!
  
  $

--------------------------

As shown above, the program accepts the following commands:

- **add "$title" "$author"**: adds a book to the library with the given title and author. All books are unread by default.
- **read "$title"**: marks a given book as read.
- **show all**: displays all of the books in the library
- **show unread**: display all of the books that are unread
- **show all by "$author"**: shows all of the books in the library by the given author.
- **show unread by "$author"**: shows the unread books in the library by the given author
- **quit**: quits the program.


Note:

- Program uses Ruby
- There can never be two books with the same title in the system (even if they were to have different authors). The user is not allowed to add two books with the same title.
- Every time the program is run, the list of books starts out empty. Data does not persist once program ends.