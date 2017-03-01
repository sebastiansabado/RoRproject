require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get foods" do
    get favorites_foods_url
    assert_response :success
  end

  test "should get movies" do
    get favorites_movies_url
    assert_response :success
  end

end
