require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get survey" do
    get :survey
    assert_response :success
  end

end
