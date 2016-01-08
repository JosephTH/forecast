require 'test_helper'

class ParseControllerTest < ActionController::TestCase
  test "should get url" do
    get :url
    assert_response :success
  end

end
