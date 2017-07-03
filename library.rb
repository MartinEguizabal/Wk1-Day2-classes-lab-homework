class Library

  attr_reader(:book_set)

  def initialize(book_set)
    @books = book_set
  end

  def all_books
    return @books
  end

  def book_details(book)
    for a_book in @books
      if a_book[:title] == book
        return a_book
      end
    end
  end

  def rental_details(book)
    for a_book in @books
      if a_book[:title] == book
        return a_book[:rental_details]
      end
    end
  end

  def add_book(new_book)
    @books << new_book
  end

end