require 'test_helper'

class StaticDisplControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get static_displ_landing_url
    assert_response :success
  end

  test "should get about" do
    get static_displ_about_url
    assert_response :success
  end

end
