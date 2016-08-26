require 'test_helper'

class TimeWindowManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get time_window_managements_index_url
    assert_response :success
  end

  test "should get show" do
    get time_window_managements_show_url
    assert_response :success
  end

  test "should get edit" do
    get time_window_managements_edit_url
    assert_response :success
  end

  test "should get new" do
    get time_window_managements_new_url
    assert_response :success
  end

  test "should get create" do
    get time_window_managements_create_url
    assert_response :success
  end

  test "should get update" do
    get time_window_managements_update_url
    assert_response :success
  end

  test "should get delete" do
    get time_window_managements_delete_url
    assert_response :success
  end

end
