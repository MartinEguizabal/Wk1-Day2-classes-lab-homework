require('minitest/autorun')
require_relative('./library.rb')

class LibraryTest < MiniTest::Test
                  
  def setup
    @book_set1 = Library.new(@book_set = [
        { 
          title: "lord_of_the_rings",
          rental_details: { 
           student_name: "Jeff", 
           date: "01/12/16"
          }
        },
        {
          title: "for whom the bell trolls",
          rental_details: {
            student_name: "Pat",
            date: 01/02/2017
          }
        },
        {
          title: "adventures for boys",
          rental_details: {
            student_name: "Max",
            date: 28/02/2017
          }
        }
      ]
    )
  end

  def test_all_books
    result = @book_set1.all_books
    assert_equal(@book_set, result)
  end

  def test_book_details
    result = @book_set1.book_details("for whom the bell trolls")
    assert_equal(        
                  {
                  title: "for whom the bell trolls",
                  rental_details: {
                    student_name: "Pat",
                    date: 01/02/2017
                  }
                }, 
            result)
  end

  def test_rental_details
    result = @book_set1.rental_details("lord_of_the_rings")
    assert_equal(        
                { 
                 student_name: "Jeff", 
                 date: "01/12/16"
                  }, 
            result)
  end

  def test_add_book
    @book_set1.add_book(
          { 
          title: "Learn Ruby",
          rental_details: { 
           student_name: "", 
           date: ""
          }
        }
      )
    assert_equal(@book_set, @book_set1.all_books)

  end




end