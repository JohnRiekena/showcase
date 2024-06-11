class Book < ApplicationRecord
  # allows for handy activerecord queries (i.e. Book.mystery, book_instance.mystery?, etc)
  enum genre: {
    uncategorized: 'Uncategorized',
    mystery: 'Mystery',
    horror: 'Horror',
    comedy: 'Comedy'
  }
end
