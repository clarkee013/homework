class Library

  def initialize(input_book_title, input_rental_name, input_rental_date)
    @book_title = input_book_title
    @rental_name = input_rental_name
    @rental_date = input_rental_date
  end

  def list_books_and_details(title, rental_details)
      for book in books
        return "#{:title}, #{:rental_details}"
      end
  end

end # END of CLASS