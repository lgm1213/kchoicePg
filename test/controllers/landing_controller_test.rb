require 'test_helper'

class LandingControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get landing_home_url
    assert_response :success
  end

  test "should get about" do
    get landing_about_url
    assert_response :success
  end

  test "should get contact" do
    get landing_contact_url
    assert_response :success
  end

  test "should get help" do
    get landing_help_url
    assert_response :success
  end

end
