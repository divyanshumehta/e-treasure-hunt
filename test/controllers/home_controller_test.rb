require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get next_clue" do
    get home_next_clue_url
    assert_response :success
  end

end
