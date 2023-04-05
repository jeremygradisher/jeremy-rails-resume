require "test_helper"

class CardsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get cards_search_url
    assert_response :success
  end
end
