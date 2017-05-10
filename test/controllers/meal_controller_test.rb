require 'test_helper'

class MealControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meal_index_url
    assert_response :success
  end

  test "should get _form" do
    get meal__form_url
    assert_response :success
  end

  test "should get edit" do
    get meal_edit_url
    assert_response :success
  end

  test "should get show" do
    get meal_show_url
    assert_response :success
  end

  test "should get new" do
    get meal_new_url
    assert_response :success
  end

end
