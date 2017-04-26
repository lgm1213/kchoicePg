require 'test_helper'

class VenueControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get venue_new_url
    assert_response :success
  end

  test "should get edit" do
    get venue_edit_url
    assert_response :success
  end

  test "should get index" do
    get venue_index_url
    assert_response :success
  end

  test "should get show" do
    get venue_show_url
    assert_response :success
  end

end
