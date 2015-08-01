require 'test_helper'

class LifeChangeUnitTest < ActiveSupport::TestCase

  def setup
    @life = LifeChangeUnit.new
  end


    test "has no input so will return 0" do
      assert_equal 0, @life.add()
    end



end
