require ('minitest/autorun')
require ('minitest/rg')
require_relative ('library')

class TestLibrary < MiniTest::Test


  def setup()
   @library =
    { 
      title: "lord_of_the_rings",
      rental_details: { 
      student_name: "Jeff", 
      date: "01/12/16"
    }
    }
    {
      title: "Dark Disciple",
      rental_details: {
      student_name: "David",
      date: "13/02/17"
    }
    }
    {
      title: "Aftermath",
      rental_details: {
      student_name: "Bob",
    }
    }
  end

  def test_list_books_and_details()
      assert_equal
  end


end # END of CLASS