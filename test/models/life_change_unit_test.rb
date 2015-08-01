require 'test_helper'

class LifeChangeUnitTest < ActiveSupport::TestCase

  def setup
    @life = LifeChangeUnit.new
  end

  test "has no input so will return 0" do
    assert_equal 0, @life.add()
  end

  test "with single input will return the value entered" do
    assert_equal 5, @life.add(5)
  end

  test "with two inputs will add up the two values" do
    assert_equal 23, @life.add(5+18)
  end

  test "with three inputs will add up the three values" do
    assert_equal 53, @life.add(20+30+3)
  end

  test "with four inputs will add up the four values" do
    assert_equal 250, @life.add(100,25,50,75)
  end


  test "Score of 300+: At risk of illness" do
    assert_output(/At risk of illness/) { @life.add(305)}
  end

  test "Score of 150-299: Risk of illness is moderate (reduced by 30% from the above risk)." do
    assert_output(/Risk of illness is moderate/){ @life.add(20+30+50+100)}
  end

  test "Score <150: Only have a slight risk of illness." do
    assert_output(/Only have a slight risk of illness/){ @life.add(10,5,10)} 
  end




end
