require 'test_helper'

class CityManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get city_managements_index_url
    assert_response :success
  end

  test "should get show" do
    get city_managements_show_url
    assert_response :success
  end

  test "should get edit" do
    get city_managements_edit_url
    assert_response :success
  end

  test "should get new" do
    get city_managements_new_url
    assert_response :success
  end

  test "should get create" do
    get city_managements_create_url
    assert_response :success
  end

  test "should get update" do
    get city_managements_update_url
    assert_response :success
  end

  test "should get delete" do
    get city_managements_delete_url
    assert_response :success
  end

end
