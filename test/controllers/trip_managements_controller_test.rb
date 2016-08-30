require 'test_helper'

class TripManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trip_managements_index_url
    assert_response :success
  end

  test "should get show" do
    get trip_managements_show_url
    assert_response :success
  end

  test "should get new" do
    get trip_managements_new_url
    assert_response :success
  end

  test "should get edit" do
    get trip_managements_edit_url
    assert_response :success
  end

  test "should get create" do
    get trip_managements_create_url
    assert_response :success
  end

  test "should get update" do
    get trip_managements_update_url
    assert_response :success
  end

  test "should get destroy" do
    get trip_managements_destroy_url
    assert_response :success
  end

end
