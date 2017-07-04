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

  def update_rental_details(title, member, due_date)
    for a_book in @books
      if a_book[:title] == title
        a_book[:rental_details][:student_name] = member
        a_book[:rental_details][:date] = due_date
      end
    end
  end

end