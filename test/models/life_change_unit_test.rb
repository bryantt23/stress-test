require 'test_helper'

class LifeChangeUnitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  describe "add" do
    it "has no input will return 0" do
      add().should == 0
    end

  end
end
