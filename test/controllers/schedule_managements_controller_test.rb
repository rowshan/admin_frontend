require 'test_helper'

class ScheduleManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get schedule_managements_index_url
    assert_response :success
  end

  test "should get show" do
    get schedule_managements_show_url
    assert_response :success
  end

  test "should get new" do
    get schedule_managements_new_url
    assert_response :success
  end

  test "should get edit" do
    get schedule_managements_edit_url
    assert_response :success
  end

  test "should get create" do
    get schedule_managements_create_url
    assert_response :success
  end

  test "should get update" do
    get schedule_managements_update_url
    assert_response :success
  end

  test "should get destroy" do
    get schedule_managements_destroy_url
    assert_response :success
  end

end
