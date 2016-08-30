require 'test_helper'

class ShiftManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shift_managements_index_url
    assert_response :success
  end

  test "should get show" do
    get shift_managements_show_url
    assert_response :success
  end

  test "should get new" do
    get shift_managements_new_url
    assert_response :success
  end

  test "should get edit" do
    get shift_managements_edit_url
    assert_response :success
  end

  test "should get create" do
    get shift_managements_create_url
    assert_response :success
  end

  test "should get update" do
    get shift_managements_update_url
    assert_response :success
  end

  test "should get destroy" do
    get shift_managements_destroy_url
    assert_response :success
  end

end
