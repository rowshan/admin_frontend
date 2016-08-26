require 'test_helper'

class PostalManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get postal_managements_index_url
    assert_response :success
  end

  test "should get show" do
    get postal_managements_show_url
    assert_response :success
  end

  test "should get edit" do
    get postal_managements_edit_url
    assert_response :success
  end

  test "should get new" do
    get postal_managements_new_url
    assert_response :success
  end

  test "should get create" do
    get postal_managements_create_url
    assert_response :success
  end

  test "should get update" do
    get postal_managements_update_url
    assert_response :success
  end

  test "should get delete" do
    get postal_managements_delete_url
    assert_response :success
  end

end
