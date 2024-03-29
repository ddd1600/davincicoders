require 'test/unit'
require 'converter'

class TestConverter < Test::Unit::TestCase

  #@cv = Convert.new
  #instantiated the class in each method instead of here
  #I'm told I could've use @@cv and been successful. 
  #I'm also told I have a flawed understanding of instance variables.
 
  @@cv = Convert.new
 
  #
  # for the record, normally the initialize method would handle this
  # issue, but not in this case

  def test_celsius
#    cv = Convert.new
    assert_equal(100.0, @@cv.celsius(212))
    assert_equal(0, @@cv.celsius(32))
  end
  
  def test_fahrenheit
#    cv = Convert.new
    assert_equal(212, @@cv.fahrenheit(100))
    assert_equal(32, @@cv.fahrenheit(0))
  end
  
end
