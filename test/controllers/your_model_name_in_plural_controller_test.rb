require 'test_helper'

class YourModelNameInPluralControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get your_model_name_in_plural_new_url
    assert_response :success
  end

  test "should get create" do
    get your_model_name_in_plural_create_url
    assert_response :success
  end

  test "should get update" do
    get your_model_name_in_plural_update_url
    assert_response :success
  end

  test "should get edit" do
    get your_model_name_in_plural_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get your_model_name_in_plural_destroy_url
    assert_response :success
  end

  test "should get index" do
    get your_model_name_in_plural_index_url
    assert_response :success
  end

  test "should get show" do
    get your_model_name_in_plural_show_url
    assert_response :success
  end

end
