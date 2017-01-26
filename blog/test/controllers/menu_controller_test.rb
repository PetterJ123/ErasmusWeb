require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get menu_index_url
    assert_response :success
  end

  test "should get countries" do
    get menu_countries_url
    assert_response :success
  end

  test "should get about" do
    get menu_about_url
    assert_response :success
  end

end
